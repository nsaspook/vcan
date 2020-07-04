/* 
 * File:   dio.h
 * Author: root
 *
 * Created on July 4, 2020, 9:40 AM
 */

#ifndef DIO_H
#define	DIO_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "vcan.h"

#define NUM_SWITCHES	8

	typedef enum {
		SW_OFF = 0,
		SW_ON,
		SW_INVALID,
	} SW_STATES;

	typedef enum {
		S0 = 0,
		S1 = 1,
		S2 = 2,
		S3 = 3,
		S4 = 4,
		S5,
		S6,
		S7,
		SNULL,
	} SW_NAMES;

	typedef struct rbutton_type {
		SW_STATES sw;
		uint32_t count;
	} rbutton_type;

	typedef struct S_data { // switch control data structure 
		volatile rbutton_type button[NUM_SWITCHES];
		volatile uint8_t sw_bitmap;
	} S_data;

	void init_dio(void);
	void update_di(void);

	SW_STATES get_switch(const uint8_t);
	SW_STATES get_switch_bm(const uint8_t);
	rbutton_type get_switch_data(uint8_t);
	uint8_t check_switches(void);
	void clear_switch(uint8_t);

#ifdef	__cplusplus
}
#endif

#endif	/* DIO_H */

