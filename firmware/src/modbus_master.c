#include "modbus_master.h"

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

typedef struct M_data { // ISR used, mainly for non-atomic mod problems
	uint32_t clock_500hz;
	uint32_t clock_10hz;
	uint32_t clock_2hz;
	uint8_t clock_blinks;
	uint8_t num_blinks;
	uint8_t blink_lock : 1;
	uint8_t config : 1;
	uint8_t stable : 1;
	uint8_t boot_code : 1;
	uint8_t power_on : 1;
	uint8_t send_count, recv_count, pwm_volts;
	uint16_t error;
} M_data;

volatile uint8_t cc_stream_file, cc_buffer[MAX_DATA]; // half-duplex so we can share the cc_buffer for TX and RX
volatile M_data M = {
	.blink_lock = false,
	.power_on = true,
};

C_data C = {
	.mcmd = G_MODE,
	.cstate = CLEAR,
	.modbus_command = G_MODE,
	.req_length = 0,
	.trace = 0,
};

uint32_t crc_error;
union MREG rvalue;

//uint16_t req_length = 0;

// code from libmodbus: https://raw.githubusercontent.com/stephane/libmodbus/master/src/modbus-rtu.c

/* Table of CRC values for high-order byte */
static const uint8_t table_crc_hi[] = {
	0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0,
	0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41,
	0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0,
	0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40,
	0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1,
	0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41,
	0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1,
	0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41,
	0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0,
	0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40,
	0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1,
	0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40,
	0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0,
	0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40,
	0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0,
	0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40,
	0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0,
	0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41,
	0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0,
	0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41,
	0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0,
	0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40,
	0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1,
	0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41,
	0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0,
	0x80, 0x41, 0x00, 0xC1, 0x81, 0x40
};

/* Table of CRC values for low-order byte */
static const uint8_t table_crc_lo[] = {
	0x00, 0xC0, 0xC1, 0x01, 0xC3, 0x03, 0x02, 0xC2, 0xC6, 0x06,
	0x07, 0xC7, 0x05, 0xC5, 0xC4, 0x04, 0xCC, 0x0C, 0x0D, 0xCD,
	0x0F, 0xCF, 0xCE, 0x0E, 0x0A, 0xCA, 0xCB, 0x0B, 0xC9, 0x09,
	0x08, 0xC8, 0xD8, 0x18, 0x19, 0xD9, 0x1B, 0xDB, 0xDA, 0x1A,
	0x1E, 0xDE, 0xDF, 0x1F, 0xDD, 0x1D, 0x1C, 0xDC, 0x14, 0xD4,
	0xD5, 0x15, 0xD7, 0x17, 0x16, 0xD6, 0xD2, 0x12, 0x13, 0xD3,
	0x11, 0xD1, 0xD0, 0x10, 0xF0, 0x30, 0x31, 0xF1, 0x33, 0xF3,
	0xF2, 0x32, 0x36, 0xF6, 0xF7, 0x37, 0xF5, 0x35, 0x34, 0xF4,
	0x3C, 0xFC, 0xFD, 0x3D, 0xFF, 0x3F, 0x3E, 0xFE, 0xFA, 0x3A,
	0x3B, 0xFB, 0x39, 0xF9, 0xF8, 0x38, 0x28, 0xE8, 0xE9, 0x29,
	0xEB, 0x2B, 0x2A, 0xEA, 0xEE, 0x2E, 0x2F, 0xEF, 0x2D, 0xED,
	0xEC, 0x2C, 0xE4, 0x24, 0x25, 0xE5, 0x27, 0xE7, 0xE6, 0x26,
	0x22, 0xE2, 0xE3, 0x23, 0xE1, 0x21, 0x20, 0xE0, 0xA0, 0x60,
	0x61, 0xA1, 0x63, 0xA3, 0xA2, 0x62, 0x66, 0xA6, 0xA7, 0x67,
	0xA5, 0x65, 0x64, 0xA4, 0x6C, 0xAC, 0xAD, 0x6D, 0xAF, 0x6F,
	0x6E, 0xAE, 0xAA, 0x6A, 0x6B, 0xAB, 0x69, 0xA9, 0xA8, 0x68,
	0x78, 0xB8, 0xB9, 0x79, 0xBB, 0x7B, 0x7A, 0xBA, 0xBE, 0x7E,
	0x7F, 0xBF, 0x7D, 0xBD, 0xBC, 0x7C, 0xB4, 0x74, 0x75, 0xB5,
	0x77, 0xB7, 0xB6, 0x76, 0x72, 0xB2, 0xB3, 0x73, 0xB1, 0x71,
	0x70, 0xB0, 0x50, 0x90, 0x91, 0x51, 0x93, 0x53, 0x52, 0x92,
	0x96, 0x56, 0x57, 0x97, 0x55, 0x95, 0x94, 0x54, 0x9C, 0x5C,
	0x5D, 0x9D, 0x5F, 0x9F, 0x9E, 0x5E, 0x5A, 0x9A, 0x9B, 0x5B,
	0x99, 0x59, 0x58, 0x98, 0x88, 0x48, 0x49, 0x89, 0x4B, 0x8B,
	0x8A, 0x4A, 0x4E, 0x8E, 0x8F, 0x4F, 0x8D, 0x4D, 0x4C, 0x8C,
	0x44, 0x84, 0x85, 0x45, 0x87, 0x47, 0x46, 0x86, 0x82, 0x42,
	0x43, 0x83, 0x41, 0x81, 0x80, 0x40
};

/*
 * send and receive MODBUS templates
 */
const uint8_t modbus_cc_mode[] = {MADDR, READ_HOLDING_REGISTERS, 0x00, 0x00, 0x00, 0x06},
modbus_cc_error[] = {MADDR, READ_HOLDING_REGISTERS, 0x00, 0x0A, 0x00, 0x02},
i400_mode[] = {MADDR, READ_HOLDING_REGISTERS, 0x00, 0x00, 0x00, 0x00, 0x85, 0x01, 0x03, 0x00, 0x00, 0x00, 0x00, 0x85, 0x00, 0x00, 0x85},
i400_error[] = {MADDR, READ_HOLDING_REGISTERS, 0x04, 0x00, 0x00, 0x00, 0x00, 0x39, 0x85},
i400_clear[] = {MADDR, WRITE_SINGLE_REGISTER, 0x00, 0x00, 0x00, 0x01, 0x5d, 0xc0},
i400_freset[] = {MADDR, WRITE_SINGLE_REGISTER, 0x00, 0x00, 0x00, 0x01, 0x60, 0x00};
/*
 * send variable register commands
 */
uint8_t modbus_cc_clear[] = {MADDR, WRITE_SINGLE_REGISTER, 0x00, 0x0A, 0x00, 0x01},
modbus_cc_freset[] = {MADDR, WRITE_SINGLE_REGISTER, 0x00, 0x0B, 0x00, 0x02};

/*
 * send and receive MODBUS templates for 3-phase energy monitor
 */
const uint8_t
// transmit frames
modbus_em_mode[] = {MADDR, READ_HOLDING_REGISTERS, 0x00, 0x0b, 0x00, 0x01}, // Carlo Gavazzi Controls identification code
modbus_em_error[] = {MADDR, READ_HOLDING_REGISTERS, 0x03, 0x02, 0x00, 0x01}, // Firmware version and revision code
modbus_em_clear[] = {MADDR, WRITE_SINGLE_REGISTER, 0x10, 0x02, 0x00, 0x01}, // System configuration, Value 1 = ?3P? (3-phase without neutral)
modbus_em_freset[] = {MADDR, WRITE_SINGLE_REGISTER, 0x10, 0x00, 0x00, 0x00}, // Password configuration, set to no password = 0
// receive frames
em_mode[] = {MADDR, READ_HOLDING_REGISTERS, 0x00, 0x00, 0x00, 0x00, 0x00},
em_error[] = {MADDR, READ_HOLDING_REGISTERS, 0x00, 0x00, 0x00, 0x00, 0x00},
em_clear[] = {MADDR, WRITE_SINGLE_REGISTER, 0x00, 0x00, 0x00, 0x00},
em_freset[] = {MADDR, WRITE_SINGLE_REGISTER, 0x00, 0x00, 0x00, 0x00};

static void half_dup_tx(bool);
static void half_dup_rx(bool);
static bool u6_trmt(void);
static uint16_t modbus_rtu_send_msg_crc(volatile uint8_t *, uint16_t);

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

uint16_t crc16(volatile uint8_t *buffer, uint16_t buffer_length)
{
	uint8_t crc_hi = 0xFF; /* high CRC byte initialized */
	uint8_t crc_lo = 0xFF; /* low CRC byte initialized */
	uint8_t i; /* will index into CRC lookup */

	/* pass through message buffer */
	while (buffer_length--) {
		i = crc_hi ^ *buffer++; /* calculate the CRC  */
		crc_hi = crc_lo ^ table_crc_hi[i];
		crc_lo = table_crc_lo[i];
	}

	return((uint16_t) crc_hi << (uint16_t) 8 | (uint16_t) crc_lo);
}

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
 * simple modbus master state machine
 */
int8_t master_controller_work(C_data * client)
{

	/*
	 * helper functions
	 */
	inline uint16_t crc16_receive(void)
	{
		return (uint16_t) ((uint16_t) cc_buffer[client->req_length - 2] << (uint16_t) 8) | ((uint16_t) cc_buffer[client->req_length - 1] & 0x00ff);;
	}

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
			client->mcmd = G_MODE;
		}
		/*
		 * command specific tx buffer setup
		 */
		switch (client->modbus_command) {
		case G_SET: // write code request
			client->trace = 3;
#ifdef	MB_EM540
			client->req_length = modbus_rtu_send_msg((void*) cc_buffer, (const void *) modbus_em_freset, sizeof(modbus_em_freset));
#else			
			modbus_cc_freset[4] = rvalue.bytes[1];
			modbus_cc_freset[5] = rvalue.bytes[0];
			client->req_length = modbus_rtu_send_msg((void*) cc_buffer, (const void *) modbus_cc_freset, sizeof(modbus_cc_freset));
#endif
			break;
		case G_AUX: // write code request
			client->trace = 4;
#ifdef	MB_EM540
			client->req_length = modbus_rtu_send_msg((void*) cc_buffer, (const void *) modbus_em_clear, sizeof(modbus_em_clear));
#else			
			modbus_cc_clear[4] = rvalue.bytes[1];
			modbus_cc_clear[5] = rvalue.bytes[0];
			client->req_length = modbus_rtu_send_msg((void*) cc_buffer, (const void *) modbus_cc_clear, sizeof(modbus_cc_clear));
#endif
			break;
		case G_ERROR: // read code request
			client->trace = 5;
#ifdef	MB_EM540
			client->req_length = modbus_rtu_send_msg((void*) cc_buffer, (const void *) modbus_em_error, sizeof(modbus_em_error));
#else
			client->req_length = modbus_rtu_send_msg((void*) cc_buffer, (const void *) modbus_cc_error, sizeof(modbus_cc_error));
#endif
			break;
		case G_LAST: // end of command sequences
			client->cstate = CLEAR;
			client->mcmd = G_MODE;
			break;
		case G_MODE: // operating mode request
			client->trace = 6;
		default:
#ifdef	MB_EM540
			client->req_length = modbus_rtu_send_msg((void*) cc_buffer, (const void *) modbus_em_mode, sizeof(modbus_em_mode));
#else
			client->req_length = modbus_rtu_send_msg((void*) cc_buffer, (const void *) modbus_cc_mode, sizeof(modbus_cc_mode));
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
			UART6_Write((uint8_t*) cc_buffer, client->req_length);
			UART3_Write((uint8_t*) "M\r\n", 3); // MODBUS trace signal to serial debug port
			client->trace = 91;
			client->cstate = RECV;
			clear_500hz(); // state machine execute background timer clear
			client->trace = 10;
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
			case G_SET: // check for controller error codes
				client->trace = 13;
#ifdef	MB_EM540
				client->req_length = sizeof(em_freset);
				if ((M.recv_count >= client->req_length) && (cc_buffer[0] == MADDR) && (cc_buffer[1] == WRITE_SINGLE_REGISTER)) {
					c_crc = crc16(cc_buffer, client->req_length - 2);
					c_crc_rec = crc16_receive();
					if (c_crc == c_crc_rec) {
						BSP_LED1_Toggle();
					} else {
						crc_error++;
						M.error++;
						set_led_blink(BOFF);
					}
					client->cstate = CLEAR;
					client->mcmd = G_LAST;
				} else {
					if (get_500hz(false) >= RDELAY) {
						client->cstate = CLEAR;
						MM_ERROR_C;
						client->mcmd = G_MODE;
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
						client->mcmd = G_MODE;
						M.error++;
					}
				}
#endif
				break;
			case G_AUX: // check for controller error codes
				client->trace = 14;
#ifdef	MB_EM540
				client->req_length = sizeof(em_clear);
				if ((M.recv_count >= client->req_length) && (cc_buffer[0] == MADDR) && (cc_buffer[1] == WRITE_SINGLE_REGISTER)) {
					c_crc = crc16(cc_buffer, client->req_length - 2);
					c_crc_rec = crc16_receive();
					if (c_crc == c_crc_rec) {
						BSP_LED2_Toggle();
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
						client->mcmd = G_MODE;
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
						client->mcmd = G_MODE;
						M.error++;
					}
				}
#endif
				break;
			case G_ERROR: // check for controller error codes
				client->trace = 15;
#ifdef	MB_EM540
				client->req_length = sizeof(em_error);
				if ((M.recv_count >= client->req_length) && (cc_buffer[0] == MADDR) && (cc_buffer[1] == READ_HOLDING_REGISTERS)) {
					c_crc = crc16(cc_buffer, client->req_length - 2);
					c_crc_rec = crc16_receive();
					if (c_crc == c_crc_rec) {
						BSP_LED1_Toggle();
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
						client->mcmd = G_MODE;
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
						client->mcmd = G_MODE;
						M.error++;
					}
				}
#endif
				break;
			case G_MODE: // check for current operating mode
				client->trace = 16;
			default:
#ifdef	MB_EM540
				client->req_length = sizeof(em_mode);
				if ((M.recv_count >= client->req_length) && (cc_buffer[0] == MADDR) && (cc_buffer[1] == READ_HOLDING_REGISTERS)) {
					c_crc = crc16(cc_buffer, client->req_length - 2);
					c_crc_rec = crc16_receive();
					if (c_crc == c_crc_rec) {
						BSP_LED2_Toggle();
					} else {
						crc_error++;
						M.error++;
						set_led_blink(BOFF);
					}
					client->cstate = CLEAR;
				} else {
					client->trace = 17;
					if (get_500hz(false) >= RDELAY) {
						client->trace = 18;
						set_led_blink(BOFF);
						client->cstate = CLEAR;
						client->mcmd = G_MODE;
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
						client->mcmd = G_MODE;
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