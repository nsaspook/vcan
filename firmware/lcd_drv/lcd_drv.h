/*
 * File:   lcd_drv.h
 * Author: root
 *
 * Created on October 12, 2021, 7:01 PM
 */

#ifndef LCD_DRV_H
#define	LCD_DRV_H

#ifdef	__cplusplus
extern "C" {
#endif

#define DMA_MAGIC	1957
#define USE_DMA // use DMA spi driver

#ifdef USE_DMA
#define	DMA_GAP		1	// set to 0 for SPI byte gaps in DMA transmissions
#define DMA_STATE_M
#endif

#ifndef DMA_STATE_M
#define USE_INT // SPI driver uses interrupts
#endif

	//#define EDOGM
#define EDOGS

	/*
	 * DMA driver for DOGXL240 @20MHz SPI clock
	 * 2021 XC32 and H3
	 */

#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include "display_type.h"
#include "eadog.h"
#include "dogm-graphic.h"
#include "OledDriver.h"
#include "OledChar.h"
#include "OledGrph.h"

#include "tests.h"
#include "device.h"

	typedef enum {
		D_INIT,
		D_MISC,
	} LCD_DVR_STATE;
	
#define lcd_frame	1	// frame buffer 1 or 0

	void init_lcd_drv(LCD_DVR_STATE init_type);
	
	extern const uint8_t foo_map[];

#ifdef	__cplusplus
}
#endif

#endif	/* LCD_DRV_H */

