/*
 * TC12400 driver for PIC32MK
 * uses SPI5 mode1 at 4MHz no interrupts
 * external interrupt 1 is used to detect chip switch events
 */

#include "tic12400.h"

/*
 * command structure data
 * the parity bit must be set correctly for the command to execute on the chip
 */
const ticbuf_type setup32 = {
	.wr = 1,
	.addr = 0x32,
	.data = 0,
	.par = 1,
};
const ticbuf_type setup21 = {
	.wr = 1,
	.addr = 0x21,
	.data = 0,
	.par = 0,
};
const ticbuf_type setup1c = {
	.wr = 1,
	.addr = 0x1c,
	.data = 0,
	.par = 1,
};
const ticbuf_type setup1b = {
	.wr = 1,
	.addr = 0x1b,
	.data = 0xffffff,
	.par = 0,
};
const ticbuf_type setup1a = {
	.wr = 1,
	.addr = 0x1a,
	.data = 0xc000,
	.par = 0,
};
const ticbuf_type setup1a_trigger = {
	.wr = 1,
	.addr = 0x1a,
	.data = 0x0a00,
	.par = 1,
};
const ticbuf_type setup22 = {
	.wr = 1,
	.addr = 0x22,
	.data = 0xffffff,
	.par = 0,
};
const ticbuf_type setup23 = {
	.wr = 1,
	.addr = 0x23,
	.data = 0xffffff,
	.par = 1,
};
const ticbuf_type setup24 = {
	.wr = 1,
	.addr = 0x24,
	.data = 0xfff,
	.par = 0,
};
const ticbuf_type setup1d = {
	.wr = 1,
	.addr = 0x1d,
	.data = 0x1,
	.par = 1,
};
const ticbuf_type ticread05 = {
	.wr = 0,
	.addr = 0x05,
	.data = 0,
	.par = 1,
};
const ticbuf_type ticdevid01 = {
	.wr = 0,
	.addr = 0x01,
	.data = 0,
	.par = 0,
};
const ticbuf_type ticstat02 = {
	.wr = 0,
	.addr = 0x02,
	.data = 0,
	.par = 0,
};
const ticbuf_type ticreset1a = {
	.wr = 1,
	.addr = 0x1a,
	.data = 0x1,
	.par = 0,
};

/*
 * global status and value registers
 */
volatile uint32_t tic12400_status = 0;
volatile uint32_t tic12400_value = 0;
ticread_type *ticstatus = (ticread_type*) & tic12400_status;

/*
 * software reset of the chip using SPI
 * all registers set to their default values
 */
void tic12400_reset(void)
{
	TIC12400_EN0_Set();
	tic12400_wr(&ticreset1a, 2);
}

/*
 * chip detection and configuration for all inputs with interrupts for
 * switch state changes with debounce
 */
bool tic12400_init(void)
{
	bool init_fail = false; // chip error detection flag

	TIC12400_EN0_Set();
	tic12400_status = tic12400_wr(&ticstat02, 1); // get status to check for proper operation
	if ((ticstatus->data > por_bit) || !ticstatus->por) { // check for any high bits beyond POR bits set
		init_fail = true;
		goto fail;
	}
	tic12400_wr(&setup32, 1); //all set to compare mode, 0x32
	tic12400_wr(&setup21, 1); //Compare threshold all bits 2V, 0x21
	tic12400_wr(&setup1c, 1); //all set to GND switch type, 0x1c
	tic12400_wr(&setup1b, 1); //all channels are enabled, 0x1b
	tic12400_wr(&setup22, 1); //set switch interrupts, 0x22
	tic12400_wr(&setup23, 1); //set switch interrupts, 0x23
	tic12400_wr(&setup24, 1); // enable interrupts, 0x24
	tic12400_wr(&setup1d, 1); // set wetting currents 0x1d
	tic12400_wr(&setup1a, 2); // set switch debounce 0x1a
	tic12400_status = tic12400_wr(&setup1a_trigger, 2); // trigger switch detections, 0x1a
	if (ticstatus->spi_fail) {
		init_fail = true;
		goto fail;
	}
	tic12400_status = tic12400_wr(&ticdevid01, 1); // get device id, 0x01
	EVIC_ExternalInterruptCallbackRegister(EXTERNAL_INT_2, tic12400_interrupt, 0);
	EVIC_ExternalInterruptEnable(EXTERNAL_INT_2);

fail:
	return !init_fail; // flip to return true if NO configuration failures
}

/*
 * send tic12400 commands to SPI port 5 with possible delay after transfer
 * returns 32-bit spi response from the tic12400
 */
uint32_t tic12400_wr(const ticbuf_type * buffer, uint16_t del)
{
	static uint32_t rbuffer = 0;

	TIC12400_EN0_Clear();
	SPI5_WriteRead((void*) buffer, 4, &rbuffer, 4);
	TIC12400_EN0_Set();
	if (del)
		delay_ms(del);
	return rbuffer;
}

/*
 * switch reading testing routine
 * toggles debug led and clears interrupt by reading status
 */
uint32_t tic12400_get_sw(void)
{
	tic12400_value = tic12400_wr(&ticread05, 0); // read switch
	tic12400_status = tic12400_wr(&ticstat02, 0); // read status
	if (tic12400_value & (0b010)) {
		BSP_LED1_Clear();
	} else {
		BSP_LED1_Set();
	}
	if (tic12400_value & (0b100000000000000)) {
		BSP_LED2_Clear();
	} else {
		BSP_LED2_Set();
	}
	return tic12400_value;
}

void tic12400_interrupt(uint32_t a, uintptr_t b)
{
	RESET_LED_Toggle();
	BSP_LED3_Toggle();
}
