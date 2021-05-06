#include "tic12400.h"

ticbuf_type setup1 = {
	.wr = 1,
	.addr = 0x32,
	.data = 0,
	.par = 1,
};
ticbuf_type setup2 = {
	.wr = 1,
	.addr = 0x21,
	.data = 0,
	.par = 0,
};
ticbuf_type setup3 = {
	.wr = 1,
	.addr = 0x1c,
	.data = 0,
	.par = 1,
};
ticbuf_type setup4 = {
	.wr = 1,
	.addr = 0x1b,
	.data = 0xffffff,
	.par = 0,
};
ticbuf_type setup5 = {
	.wr = 1,
	.addr = 0x1a,
	.data = 0x800,
	.par = 0,
};
ticbuf_type setup6 = {
	.wr = 1,
	.addr = 0x22,
	.data = 0x2,
	.par = 0,
};
ticbuf_type ticread1 = {
	.wr = 0,
	.addr = 0x05,
	.data = 0,
	.par = 1,
};
ticbuf_type ticdevid1 = {
	.wr = 0,
	.addr = 0x01,
	.data = 0,
	.par = 0,
};
ticbuf_type ticstat1 = {
	.wr = 0,
	.addr = 0x02,
	.data = 0,
	.par = 0,
};

uint32_t tic12400_status = 0;
uint32_t tic12400_value = 0;

bool tic12400_init(void)
{
	ticread_type *ticstatus = (ticread_type*) & tic12400_status;
	bool init_fail = false;

	TIC12400_EN0_Set();
	tic12400_status = tic12400_wr(&ticstat1);
	if (ticstatus->data > 1) { // check for any high bits beyond POR
		init_fail = true;
		goto fail;
	}
//	tic12400_wr(&setup6); //set switch interrupts, 0x22
	tic12400_wr(&setup1); //all set to compare mode, 0x32
	tic12400_wr(&setup2); //Compare threshold all bits 2V, 0x21
	tic12400_wr(&setup3); //all set to GND switch type, 0x1c
	tic12400_wr(&setup4); //all channels are enabled, 0x1b
	tic12400_status = tic12400_wr(&setup5); //Start conversion, 0x1a
	if (ticstatus->spi_fail || !(ticstatus->data & poll_mask)) {
		init_fail = true;
		goto fail;
	}

	tic12400_wr(&ticdevid1); // get device id, 0x01

fail:
	return !init_fail; // true if no init failures
}

uint32_t tic12400_wr(ticbuf_type * buffer)
{
	static uint32_t rbuffer = 0;

	TIC12400_EN0_Clear();
	SPI5_WriteRead(buffer, 4, &rbuffer, 4);
	TIC12400_EN0_Set();
	return rbuffer;
}

uint32_t tic12400_get_sw(void)
{
	tic12400_status = tic12400_wr(&ticstat1);
	tic12400_value = tic12400_wr(&ticread1);
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
