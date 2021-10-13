#include "lcd_drv.h"

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
//		lcd_draw_image_P((uint8_t *) foo_map, 100, 100, 0);
//		wdtdelay(10000000); // > 400ms power up delay
#endif
		break;
	default:
		break;
	}
}
