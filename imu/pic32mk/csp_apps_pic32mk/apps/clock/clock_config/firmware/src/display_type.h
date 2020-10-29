/* 
 * File:   display_type.h
 * Author: root
 *
 * Created on August 18, 2020, 3:04 PM
 */

#ifndef DISPLAY_TYPE_H
#define	DISPLAY_TYPE_H

#ifdef	__cplusplus
extern "C" {
#endif

	/*
	 * use DMA for display buffer updates
	 * currently does not work
	 */
	//#define USE_DMA

	//Select the display type: DOGS102: 102, DOGM128/DOGL128: 128, DOGM132: 132, DOGXL160: 160, DOGXL240: 240
#define DISPLAY_TYPE  240
	//Display Orientation: Normal (0) or upside-down (1)?
#define ORIENTATION_UPSIDEDOWN 0

	//Should chip select (CS) be used?
#define LCD_USE_CHIPSELECT  1

	//Use Backlight?  (0: no backlight, 1: backlight (on when pin is high), 2: backlight (on when pin is low))
#define LCD_USE_BACKLIGHT   1
	//#define EDOGM
#define EDOGS
	//#define EDOGS_DEMO


	//A0 Port (CD on DOGS & DOGXL)
#define PORT_A0  PORTF_OUT
#define DDR_A0   PORTF_DIR
#define PIN_A0   1

	//Reset Port
#define PORT_RST PORTF_OUT
#define DDR_RST  PORTF_DIR
#define PIN_RST  0

	//Backlight Port
#if LCD_USE_BACKLIGHT != 0
#define PORT_LED PORTB
#define DDR_LED  DDRB
#define PIN_LED  4
#endif

	//Chip select
#if LCD_USE_CHIPSELECT == 1
#define PORT_CS  PORTF_OUT
#define DDR_CS   PORTF_DIR
#define PIN_CS   4
#endif

#include "definitions.h"                // SYS function prototypes
#include "config/pic32mk_mcj_curiosity_pro/peripheral/spi/spi_master/plib_spi1_master.h"
#include "config/pic32mk_mcj_curiosity_pro/peripheral/../peripheral/gpio/plib_gpio.h"
#include "config/pic32mk_mcj_curiosity_pro/peripheral/dmac/plib_dmac.h"

	extern void RS_SetLow(void);
	extern void RS_SetHigh(void);
	extern void CSB_SetLow(void);
	extern void CSB_SetHigh(void);
	extern void SPI_Exchange8bit(uint8_t);
	extern void SPI_ExchangeBuffer(uint8_t *, uint16_t);
	extern uint16_t SPI_to_Buffer(uint8_t *, uint16_t, uint8_t *);
	void wait_lcd_done(void);

#ifdef	__cplusplus
}
#endif

#endif	/* DISPLAY_TYPE_H */

