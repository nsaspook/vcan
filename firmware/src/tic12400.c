#include "tic12400.h"

ticbuf_type setup1 = {
	.wr=1,
	.addr = 0x32,
	.data = 0,
	.par=1,
};
ticbuf_type setup2 = {
	.wr=1,
	.addr = 0x21,
	.data = 0,
	.par=1,
};
ticbuf_type setup3 = {
	.wr=1,
	.addr = 0x1c,
	.data = 0,
	.par=1,
};
ticbuf_type setup4 = {
	.wr=1,
	.addr = 0x1b,
	.data = 0xffffff,
	.par=1,
};
ticbuf_type setup5 = {
	.wr=1,
	.addr = 0x1a,
	.data = 0x800,
	.par=1,
};

void tic12400_init(void)
{
	TIC12400_EN0_Set();
	
	tic12400_wr(&setup1);
	tic12400_wr(&setup2);
	tic12400_wr(&setup3);
	tic12400_wr(&setup4);
	tic12400_wr(&setup5);
	//	 TIC12400Q1_Write(1,0x32,0); //all set to compare mode
	//	 TIC12400Q1_Write(1,0x21,0x00); //Compare threshold all bits 2V
	//	 TIC12400Q1_Write(1,0x1C,0); //all set to GND
	//	 TIC12400Q1_Write(1,0x1B, 0xFFFFFF); //All channels are enabled
	//	 TIC12400Q1_Write(1,0x1A,0x800); //Start conversion
}

uint32_t tic12400_wr(ticbuf_type * buffer)
{
	static uint32_t rbuffer=0;

	TIC12400_EN0_Clear();
	SPI5_WriteRead(buffer, 4,&rbuffer,4);
	TIC12400_EN0_Set();
	return rbuffer;
}
