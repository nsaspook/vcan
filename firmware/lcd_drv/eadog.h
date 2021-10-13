/*
 * File:   eadog.h
 * Author: root
 *
 * Created on July 27, 2015, 2:05 PM
 */

/* Parts taken from:
 * This version for XC32 PIC32MK MCM
 * modified for DMA and 32-bit hardware
 *
 *            file: EA-DOGM_MIO.c
 *         version: 2.03
 *     description: Multi I/O driver for EA DOGM displays
 *                : Uses 8Bit, SPI HW or SPI SW (bitbang)
 *     written by : Michael Bradley (mbradley@mculabs.com)
 *   contributions: Imaginos (CCS forum), Emil Nad (8Bit testing)
 *                  jgschmidt (CCS forum)
 */

#ifndef EADOG_H
#define	EADOG_H

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

#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include "tests.h"
#include "device.h"
#include "OledDriver.h"
#include "OledChar.h"

#define max_strlen	STR_BUF_SIZE-1

#define LCD_CMD_MASK	0x01
#define LCD_CMD_SET	0x100
#define LCD_CLEAR_HOME	0x04
	/*
	 * for 2MHz SPI clock
	 */
#define IS_DELAYSHORT	4
#define IS_DELAYMED	5
#define IS_DELAYLONG	800
#define IS_DELAYPOWERUP	350000

#define EADOGM_CMD_CLR		1
#define EADOGM_CMD_CURSOR_ON     0b00001111
#define EADOGM_CMD_CURSOR_OFF    0b00001100
#define EADOGM_CMD_DISPLAY_ON    0b00001100
#define EADOGM_CMD_DISPLAY_OFF   0b00001000
#define EADOGM_CMD_DDRAM_ADDR    0b10000000
#define EADOGM_CMD_CGRAM_ADDR    0b01000000
#define EADOGM_CMD_SELECT_R0     0b00011000
#define EADOGM_CMD_SELECT_R1     0b00010000
#define EADOGM_CMD_SET_TABLE2    0b00101010
#define EADOGM_COLSPAN		16

	void wdtdelay(uint32_t);
	void init_display(void);
	void eaDogM_WriteChr(int8_t);
	void eaDogM_WriteCommand(uint8_t);
	void eaDogM_SetPos(uint8_t, uint8_t);
	void eaDogM_ClearRow(uint8_t);
	void eaDogM_WriteString(char *);
	void eaDogM_WriteStringAtPos(uint8_t, uint8_t, char *);
	void eaDogM_WriteIntAtPos(uint8_t, uint8_t, uint8_t);
	void eaDogM_WriteByteToCGRAM(uint8_t, uint8_t);
	void SPI3_Initialize_edogm(void);
	void SPI3_Initialize_edogs(void);
	void SPI3_ExchangeBuffer(uint8_t *, uint16_t);

#define eaDogM_Cls()             eaDogM_WriteCommand(EADOGM_CMD_CLR)
#define eaDogM_CursorOn()        eaDogM_WriteCommand(EADOGM_CMD_CURSOR_ON)
#define eaDogM_CursorOff()       eaDogM_WriteCommand(EADOGM_CMD_CURSOR_OFF)
#define eaDogM_DisplayOn()       eaDogM_WriteCommand(EADOGM_CMD_DISPLAY_ON)
#define eaDogM_DisplayOff()      eaDogM_WriteCommand(EADOGM_CMD_DISPLAY_OFF)

#ifdef	__cplusplus
}
#endif

#endif	/* EADOG_H */

