#include "lcd_drv.h"

static volatile uint8_t NOPER = 0;

void init_lcd_drv(LCD_DVR_STATE init_type)
{
	switch (init_type) {
	case D_MISC:
	case D_INIT: // send the GLCD buffer data via DMA
#ifdef EDOGM
		init_display();
		eaDogM_CursorOff();
#endif
#ifdef EDOGS
		SPI_EN1_Set();
		wdtdelay(IS_DELAYPOWERUP); // > 400ms power up delay
		lcd_init();
		OledInit();
		OledSetCharUpdate(0); // manual LCD screen updates for speed
		OledMoveTo(bmp_x, bmp_y); // position image
		OledPutBmp(bmp_size, bmp_size, (uint8_t *) foo_map); // upload bitmap image from C array
		dmtdelay(BMP_DELAY); // show image for a bit
#endif
		break;
	default:
		break;
	}
}

void dmtdelay(const uint32_t delay)
{
	static uint32_t dcount;
	uint32_t dmt_clear_count = DMT_INST_COUNT;

	for (dcount = 0; dcount <= delay; dcount++) { // delay a bit
		if (!dmt_clear_count--) {
			DMT_Clear(); // clear the Dead Man Timer
			dmt_clear_count = DMT_INST_COUNT;
		}
		NOPER++;
	};
}