#include "modbus_master.h"
//#include "em540.h"

#define	ON	1
#define	OFF	0
#define	LEDON	0   // logic low lights led
#define	LEDOFF	1
#define MAX_BLINKS	10
#define ERROR_BLINKS	MAX_BLINKS
#define BLINK_SPACE	8

#define CC_DEACT	61	// 1.00 normal 61
#define CC_ACT		92	// 1.50
#define CC_MPPT		122	// 2.00
#define CC_EQUAL	150	// 2.50
#define CC_BOOST	177	// 3.00
#define CC_FLOAT	205	// 3.50
#define CC_LIMIT	230	// 4.00
#define CC_OFFLINE	255	// 4.40

volatile uint8_t cc_stream_file, cc_buffer[MAX_DATA], cc_buffer_tx[MAX_DATA]; // RX and TX command buffers

volatile M_data M = {
	.blink_lock = false,
	.power_on = true,
};

C_data C = {
	.mcmd = G_ID,
	.cstate = CLEAR,
	.modbus_command = G_ID,
	.req_length = 0,
	.trace = 0,
};

/*
 * send and receive MODBUS templates for 3-phase energy monitor EM540
 * https://www.gavazzionline.com/pdf/EM540_DS_ENG.pdf
 * https://gavazzi.se/app/uploads/2022/03/em500-cp-v1r3-eng.pdf
 */
const uint8_t
// transmit frames
modbus_em_id[] = {MADDR, READ_HOLDING_REGISTERS, 0x00, 0x0b, 0x00, 0x01}, // Carlo Gavazzi Controls identification code
modbus_em_version[] = {MADDR, READ_HOLDING_REGISTERS, 0x03, 0x02, 0x00, 0x01}, // Firmware version and revision code
modbus_em_data[] = {MADDR, READ_HOLDING_REGISTERS, 0x00, 0x00, 0x00, 24},
modbus_em_config[] = {MADDR, WRITE_SINGLE_REGISTER, 0x10, 0x02, 0x00, 0x01}, // System configuration, Value 1 = ?3P? (3-phase without neutral)
modbus_em_passwd[] = {MADDR, WRITE_SINGLE_REGISTER, 0x10, 0x00, 0x00, 0x00}, // Password configuration, set to no password = 0
// receive frames
em_id[] = {MADDR, READ_HOLDING_REGISTERS, 0x00, 0x00, 0x00, 0x00, 0x00},
em_version[] = {MADDR, READ_HOLDING_REGISTERS, 0x00, 0x00, 0x00, 0x00, 0x00},
em_data[] = {MADDR, READ_HOLDING_REGISTERS, 0x00, // number of 16-bit words returned
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00}, // crc
em_config[] = {MADDR, WRITE_SINGLE_REGISTER, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
em_passwd[] = {MADDR, WRITE_SINGLE_REGISTER, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

union MREG rvalue;
EM_data em;


static void half_dup_tx(bool);
static void half_dup_rx(bool);
static bool u6_trmt(void);
static uint16_t modbus_rtu_send_msg_crc(volatile uint8_t *, uint16_t);
static uint16_t crc16_receive(C_data *);
static void log_crc_error(uint16_t, uint16_t);

/*
 * be careful of C18 integer promotion rules on 16-bit registers
 * on these types of routines
 */
static uint16_t modbus_rtu_send_msg_crc(volatile uint8_t *req, uint16_t req_length)
{
	uint16_t crc;

	crc = crc16(req, req_length);
	req[req_length++] = crc >> (uint16_t) 8;
	req[req_length++] = crc & 0x00FF;

	return req_length;
}

/*
 * constructs a properly formatted RTU message with CRC from a program memory array to the data memory array buffer
 */
uint16_t modbus_rtu_send_msg(void *cc_buffer, const void *modbus_cc_mode, uint16_t req_length)
{
	memcpy((void*) cc_buffer, (const void *) modbus_cc_mode, req_length);
	/*
	 * add the CRC and increase message size by two bytes for the CRC16
	 */
	return modbus_rtu_send_msg_crc((volatile uint8_t *) cc_buffer, req_length);
}

/*
 * calculate a CRC16 from the data buffer
 */
uint16_t crc16(volatile uint8_t *buffer, uint16_t buffer_length)
{
	uint8_t crc_hi = 0xFF; /* high CRC byte initialized */
	uint8_t crc_lo = 0xFF; /* low CRC byte initialized */
	uint8_t i; /* will index into CRC lookup */
	uint16_t crc16t;

	/* pass through message buffer */
	while (buffer_length--) {
		i = crc_hi ^ *buffer++; /* calculate the CRC  */
		crc_hi = crc_lo ^ table_crc_hi[i];
		crc_lo = table_crc_lo[i];
	}

	crc16t = crc_hi << (uint16_t) 8 | (uint16_t) crc_lo;
	return crc16t;
}

/*
 * callback for UART received character from MODBUS client
 */
void my_modbus_rx_32(UART_EVENT event, uintptr_t context)
{
	static uint8_t m_data = 0;

	BSP_LED3_Set();
	if (event == UART_EVENT_READ_ERROR) {
		V.mb_error = UART6_ErrorGet();
	} else {
		/*
		 * process received controller data stream
		 */
		UART6_Read(&m_data, 1);
		cc_buffer[M.recv_count] = m_data;
		if (++M.recv_count >= MAX_DATA) {
			M.recv_count = 0; // reset buffer position
		}
	}
}

uint8_t init_stream_params(void)
{
	M.config = false;
	return 0;
}

/*
 * helper functions
 * received CRC16 bytes from client
 */
static uint16_t crc16_receive(C_data * client)
{
	uint16_t crc16r;

	crc16r = ((uint16_t) cc_buffer[client->req_length - 2] << (uint16_t) 8) | ((uint16_t) cc_buffer[client->req_length - 1] & 0x00ff);
	return crc16r;
}

static void log_crc_error(uint16_t c_crc, uint16_t c_crc_rec)
{
	M.crc_calc = c_crc;
	M.crc_data = c_crc_rec;
	M.crc_error++;
	M.error++;
}

/*
 * reorder bytes for PIC32MK int32_t 
 */
int32_t mb32_swap(int32_t value)
{
	uint8_t i;
	union MREG32 dvalue;

	dvalue.value = value;
	i = dvalue.bytes[0];
	dvalue.bytes[0] = dvalue.bytes[1];
	dvalue.bytes[1] = i;
	i = dvalue.bytes[2];
	dvalue.bytes[2] = dvalue.bytes[3];
	dvalue.bytes[3] = i;
	return dvalue.value;
}

/*
 * Simple MODBUS master state machine
 */
int8_t master_controller_work(C_data * client)
{
	client->trace = 1;
	switch (client->cstate) {
	case CLEAR:
		client->trace = 2;
		BSP_LED3_Clear();
		clear_2hz();
		clear_10hz();
		client->cstate = INIT;
		client->modbus_command = client->mcmd++; // sequence modbus commands to client
		if (client->mcmd > G_LAST) {
			client->mcmd = G_ID;
		}
		/*
		 * command specific tx buffer setup
		 */
		switch (client->modbus_command) {
		case G_PASSWD: // write code request
			client->trace = 3;
#ifdef	MB_EM540
			client->req_length = modbus_rtu_send_msg((void*) cc_buffer_tx, (const void *) modbus_em_passwd, sizeof(modbus_em_passwd));
#else			
			modbus_cc_freset[4] = rvalue.bytes[1];
			modbus_cc_freset[5] = rvalue.bytes[0];
			client->req_length = modbus_rtu_send_msg((void*) cc_buffer_tx, (const void *) modbus_cc_freset, sizeof(modbus_cc_freset));
#endif
			break;
		case G_CONFIG: // write code request
			client->trace = 4;
#ifdef	MB_EM540
			client->req_length = modbus_rtu_send_msg((void*) cc_buffer_tx, (const void *) modbus_em_config, sizeof(modbus_em_config));
#else			
			modbus_cc_clear[4] = rvalue.bytes[1];
			modbus_cc_clear[5] = rvalue.bytes[0];
			client->req_length = modbus_rtu_send_msg((void*) cc_buffer_tx, (const void *) modbus_cc_clear, sizeof(modbus_cc_clear));
#endif
			break;
		case G_DATA: // read code request
			client->trace = 5;
#ifdef	MB_EM540
			client->req_length = modbus_rtu_send_msg((void*) cc_buffer_tx, (const void *) modbus_em_data, sizeof(modbus_em_data));
#else
			client->req_length = modbus_rtu_send_msg((void*) cc_buffer_tx, (const void *) modbus_cc_error, sizeof(modbus_cc_error));
#endif
			break;
		case G_LAST: // end of command sequences
			client->cstate = CLEAR;
			client->mcmd = G_ID;
			break;
		case G_ID: // operating mode request
			client->trace = 6;
		default:
#ifdef	MB_EM540
			client->req_length = modbus_rtu_send_msg((void*) cc_buffer_tx, (const void *) modbus_em_id, sizeof(modbus_em_id));
#else
			client->req_length = modbus_rtu_send_msg((void*) cc_buffer_tx, (const void *) modbus_cc_mode, sizeof(modbus_cc_mode));
#endif
			break;
		}
		break;
	case INIT:
		client->trace = 7;
		/*
		 * MODBUS master query speed
		 */
#ifdef	FASTQ 
		if (get_10hz(false) >= CDELAY) {
#else
		if (get_2hz(false) >= QDELAY) {
#endif
			half_dup_tx(false); // no delays here
			M.recv_count = 0;
			client->cstate = SEND;
			clear_500hz();
			client->trace = 71;
		}
		break;
	case SEND:
		client->trace = 8;
		if (get_500hz(false) >= TDELAY) {
			client->trace = 9;
			UART6_Write((uint8_t*) cc_buffer_tx, client->req_length);
			client->trace = 91;
			client->cstate = RECV;
			clear_500hz(); // state machine execute background timer clear
			client->trace = 10;
			M.sends++;
		}
		break;
	case RECV:
		client->trace = 11;
		if (u6_trmt()) { // check for serial UART transmit shift register and buffer empty
			clear_500hz(); // clear timer until buffer empty
		}
		if (get_500hz(false) >= TDELAY) { // state machine execute timer test
			uint16_t c_crc, c_crc_rec;

			client->trace = 12;
			BSP_LED3_Set();
			half_dup_rx(false); // no delays here

			/*
			 * check received response data for size and format for each command sent
			 */
			switch (client->modbus_command) {
			case G_PASSWD: // check for controller error codes
				client->trace = 13;
#ifdef	MB_EM540
				client->req_length = sizeof(em_passwd);
				if (DBUG_R((M.recv_count >= client->req_length) && (cc_buffer[0] == MADDR) && (cc_buffer[1] == WRITE_SINGLE_REGISTER))) {
					c_crc = crc16(cc_buffer, client->req_length - 2);
					c_crc_rec = crc16_receive(client);
					if (DBUG_R c_crc == c_crc_rec) {
						BSP_LED1_Toggle();
					} else {
						log_crc_error(c_crc, c_crc_rec);
					}
					client->cstate = CLEAR;
					client->mcmd = G_LAST;
				} else {
					if (get_500hz(false) >= RDELAY) {
						client->cstate = CLEAR;
						MM_ERROR_C;
						client->mcmd = G_ID;
						M.to_error++;
						M.error++;
					}
				}
#else
				client->req_length = sizeof(i400_freset);
				if ((M.recv_count >= client->req_length) && (cc_buffer[0] == MADDR) && (cc_buffer[1] == WRITE_SINGLE_REGISTER)) {
					c_crc = crc16(cc_buffer, client->req_length - 2);
					c_crc_rec = (uint16_t) ((uint16_t) cc_buffer[client->req_length - 2] << (uint16_t) 8) | ((uint16_t) cc_buffer[client->req_length - 1] & 0x00ff);
					if (c_crc == c_crc_rec) {

					} else {
						crc_error++;
						M.error++;
						set_led_blink(BOFF);
					}
					client->cstate = CLEAR;
				} else {
					/*
					 * receiver timeout, restart
					 */
					if (get_500hz(false) >= RDELAY) {
						client->cstate = CLEAR;
						MM_ERROR_C;
						client->mcmd = G_ID;
						M.error++;
					}
				}
#endif
				break;
			case G_CONFIG: // check for controller error codes
				client->trace = 14;
#ifdef	MB_EM540
				client->req_length = sizeof(em_config);
				if (DBUG_R((M.recv_count >= client->req_length) && (cc_buffer[0] == MADDR) && (cc_buffer[1] == WRITE_SINGLE_REGISTER))) {
					c_crc = crc16(cc_buffer, client->req_length - 2);
					c_crc_rec = crc16_receive(client);
					if (DBUG_R c_crc == c_crc_rec) {
						BSP_LED2_Toggle();
					} else {
						log_crc_error(c_crc, c_crc_rec);
					}
					client->cstate = CLEAR;
				} else {
					if (get_500hz(false) >= RDELAY) {
						client->cstate = CLEAR;
						MM_ERROR_C;
						client->mcmd = G_ID;
						M.to_error++;
						M.error++;
					}
				}
#else
				client->req_length = sizeof(i400_clear);
				if ((M.recv_count >= client->req_length) && (cc_buffer[0] == MADDR) && (cc_buffer[1] == WRITE_SINGLE_REGISTER)) {
					c_crc = crc16(cc_buffer, client->req_length - 2);
					c_crc_rec = (uint16_t) ((uint16_t) cc_buffer[client->req_length - 2] << (uint16_t) 8) | ((uint16_t) cc_buffer[client->req_length - 1] & 0x00ff);
					if (c_crc == c_crc_rec) {

					} else {
						crc_error++;
						M.error++;
						set_led_blink(BOFF);
					}
					client->cstate = CLEAR;
				} else {
					if (get_500hz(false) >= RDELAY) {
						client->cstate = CLEAR;
						MM_ERROR_C;
						client->mcmd = G_ID;
						M.error++;
					}
				}
#endif
				break;
			case G_DATA: // check for controller error codes
				client->trace = 15;
#ifdef	MB_EM540
				client->req_length = sizeof(em_data);
				if (DBUG_R((M.recv_count >= client->req_length) && (cc_buffer[0] == MADDR) && (cc_buffer[1] == READ_HOLDING_REGISTERS))) {
					c_crc = crc16(cc_buffer, client->req_length - 2);
					c_crc_rec = crc16_receive(client);
					if (DBUG_R c_crc == c_crc_rec) {
						BSP_LED1_Toggle();
						/*
						 * move from receive buffer to data structure and munge the data into the correct 32-bit format from MODBUS
						 */
						memcpy((void*) &em, (void*) &cc_buffer[3], sizeof(em));
						em.vl1l2 = mb32_swap(em.vl1l2);
						em.vl2l3 = mb32_swap(em.vl2l3);
						em.vl3l1 = mb32_swap(em.vl3l1);
						em.al1 = mb32_swap(em.al1);
						em.al2 = mb32_swap(em.al2);
						em.al3 = mb32_swap(em.al3);
						em.wl1 = mb32_swap(em.wl1);
						em.wl2 = mb32_swap(em.wl2);
						em.wl3 = mb32_swap(em.wl3);
					} else {
						log_crc_error(c_crc, c_crc_rec);
					}
					client->cstate = CLEAR;
				} else {
					if (get_500hz(false) >= RDELAY) {
						client->cstate = CLEAR;
						MM_ERROR_C;
						client->mcmd = G_ID;
						M.to_error++;
						M.error++;
					}
				}
#else
				client->req_length = sizeof(i400_error);
				if ((M.recv_count >= client->req_length) && (cc_buffer[0] == MADDR) && (cc_buffer[1] == READ_HOLDING_REGISTERS)) {
					uint16_t temp;
					c_crc = crc16(cc_buffer, client->req_length - 2);
					c_crc_rec = (uint16_t) ((uint16_t) cc_buffer[client->req_length - 2] << (uint16_t) 8) | ((uint16_t) cc_buffer[client->req_length - 1] & 0x00ff);
					if (c_crc == c_crc_rec) {
						if ((temp = ((uint16_t) cc_buffer[3] << 8) +((uint16_t) cc_buffer[4]&0xff))) {
							//							NOP();
							MM_ERROR_S;
							set_led_blink(ERROR_BLINKS);
						} else {
							MM_ERROR_C;
						}
					} else {
						crc_error++;
						M.error++;
						set_led_blink(BOFF);
					}
					client->cstate = CLEAR;
				} else {
					if (get_500hz(false) >= RDELAY) {
						client->cstate = CLEAR;
						MM_ERROR_C;
						client->mcmd = G_ID;
						M.error++;
					}
				}
#endif
				break;
			case G_ID: // check for current operating mode
				client->trace = 16;
			default:
#ifdef	MB_EM540
				client->req_length = sizeof(em_id);
				if (DBUG_R((M.recv_count >= client->req_length) && (cc_buffer[0] == MADDR) && (cc_buffer[1] == READ_HOLDING_REGISTERS))) {
					c_crc = crc16(cc_buffer, client->req_length - 2);
					c_crc_rec = crc16_receive(client);
					if (DBUG_R c_crc == c_crc_rec) {
						BSP_LED2_Toggle();
					} else {
						log_crc_error(c_crc, c_crc_rec);
					}
					client->cstate = CLEAR;
				} else {
					client->trace = 17;
					if (get_500hz(false) >= RDELAY) {
						client->trace = 18;
						client->cstate = CLEAR;
						client->mcmd = G_ID;
						M.to_error++;
						M.error++;
						client->trace = 19;
					}
				}
#else
				client->req_length = sizeof(i400_mode);
				if ((M.recv_count >= client->req_length) && (cc_buffer[0] == MADDR) && (cc_buffer[1] == READ_HOLDING_REGISTERS)) {
					uint8_t temp;
					static uint8_t volts = CC_OFFLINE;

					c_crc = crc16(cc_buffer, client->req_length - 2);
					c_crc_rec = (uint16_t) ((uint16_t) cc_buffer[client->req_length - 2] << (uint16_t) 8) | ((uint16_t) cc_buffer[client->req_length - 1] & 0x00ff);

					if (c_crc == c_crc_rec) {
						if ((temp = cc_buffer[4])) {
							set_led_blink(temp);
							switch (temp) {
							case 1:
								volts = CC_ACT;
								break;
							case 2:
								volts = CC_MPPT;
								break;
							case 3:
								volts = CC_EQUAL;
								break;
							case 4:
								volts = CC_BOOST;
								break;
							case 5:
								volts = CC_FLOAT;
								break;
							case 6:
								volts = CC_LIMIT;
								break;
							default:
								volts = CC_ACT;
								break;
							}
						} else {
							set_led_blink(BON);
							volts = CC_DEACT;
						}
					} else {
						crc_error++;
						M.error++;
						set_led_blink(BOFF);
					}
					M.pwm_volts = volts;
					client->cstate = CLEAR;
				} else {
					client->trace = 17;
					if (get_500hz(false) >= RDELAY) {
						client->trace = 18;
						set_led_blink(BOFF);
						client->cstate = CLEAR;
						M.pwm_volts = CC_OFFLINE;
						client->mcmd = G_ID;
						M.error++;
						client->trace = 19;
					}
				}
#endif
				break;
			}
		}
		break;
	default:
		break;
	}
	return client->mcmd;
}

/*
 * state machine no busy wait timers
 */
void clear_2hz(void)
{
	M.clock_2hz = 0;
}

void clear_10hz(void)
{
	M.clock_10hz = 0;
}

void clear_500hz(void)
{
	M.clock_500hz = 0;
}

uint32_t get_2hz(uint8_t mode)
{
	static uint32_t tmp = 0;

	if (mode) {
		return tmp;
	}

	tmp = M.clock_2hz;
	return tmp;
}

uint32_t get_10hz(uint8_t mode)
{
	static uint32_t tmp = 0;

	if (mode) {
		return tmp;
	}

	tmp = M.clock_10hz;
	return tmp;
}

uint32_t get_500hz(uint8_t mode)
{
	static uint32_t tmp = 0;

	if (mode) {
		return tmp;
	}

	tmp = M.clock_500hz;
	return tmp;
}

/*
 * set the number of blinks variable from mainline code
 */
bool set_led_blink(uint8_t blinks)
{
	return true;
}

// switch RS transceiver to transmit mode and wait if not tx

static void half_dup_tx(bool delay)
{
	if (DERE_Get()) {
		return;
	}
	DERE_Set(); // enable modbus transmitter
	if (delay) {
		delay_ms(2); // busy waits
	}
}

// switch RS transceiver to receive mode and wait if not rx

static void half_dup_rx(bool delay)
{
	if (!DERE_Get()) {
		return;
	}
	if (delay) {
		delay_ms(2); // busy waits
	}
	DERE_Clear(); // enable modbus receiver	
}

// ISR function for TMR8

void timer_500ms_tick(uint32_t status, uintptr_t context)
{
	M.clock_2hz++;
	M.clock_blinks++;
}

// ISR function for TMR9

void timer_2ms_tick(uint32_t status, uintptr_t context)
{
	M.clock_500hz++;
	M.clock_10hz++;
}

/*
 * check if we are done with interrupt background buffered transmission of serial data with FIFO
 * 
 * TRMT: Transmit Shift Register is Empty bit (read-only)
 * 1 = Transmit shift register is empty and transmit buffer is empty (the last transmission has completed)
 * 0 = Transmit shift register is not empty, a transmission is in progress or queued in the transmit buffer
 * 
 * ? 8-level deep First-In-First-Out (FIFO) transmit data buffer, ? 8-level deep FIFO receive data buffer
 * Interrupt is generated and asserted while the transmit buffer is empty
 * 
 * so this will return 'true' after the buffer is empty 'interrupt' and after the last bit is on the wire
 */

static bool u6_trmt(void)
{
	return !(U6STA & _U6STA_TRMT_MASK); // note, we invert the TRMT bit so it's true while transmitting
}