/* 
 * File:   modbus_master.h
 * Author: root
 *
 * Created on April 27, 2022, 4:02 PM
 */

#ifndef MODBUS_MASTER_H
#define	MODBUS_MASTER_H

#ifdef	__cplusplus
extern "C" {
#endif

#define MAX_DATA        64


#include "vcan.h"
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include "vcan.h"

	extern volatile struct V_type V;

	typedef enum comm_type {
		CLEAR,
		INIT,
		SEND,
		RECV,
	} comm_type;

	typedef enum cmd_type {
		G_MODE = 0,
		G_ERROR,
		G_AUX,
		G_SET,
		G_LAST,
	} cmd_type;

	union PWMDC {
		uint16_t lpwm;
		uint8_t bpwm[2];
	};

	union MREG {
		int16_t value;
		char bytes[2];
	};

#define SWVER	0x0030;
#define MADDR		0x04 // modbus i400hz client address
#define EMADDR		0x01 // modbus EM540 client address
	/*******************************ModBus Functions*******************************/
#define READ_COILS                  1
#define READ_DISCRETE_INPUTS        2
#define READ_HOLDING_REGISTERS      3
#define READ_INPUT_REGISTERS        4
#define WRITE_SINGLE_COIL           5
#define WRITE_SINGLE_REGISTER       6
#define WRITE_MULTIPLE_COILS        15
#define WRITE_MULTIPLE_REGISTERS    16

#define BOFF	0
#define BON	255
	
#define MM_ERROR_S	BSP_LED1_Set()
#define MM_ERROR_C	BSP_LED1_Clear()

	uint16_t crc16(volatile uint8_t *, uint16_t);
	uint16_t modbus_rtu_send_msg(void *, const void *, uint16_t);

	void my_modbus_rx_32(UART_EVENT, uintptr_t);
	int8_t controller_work(void);
	uint8_t init_stream_params(void);
	int8_t master_controller_work(void);

	void clear_2hz(void);
	void clear_10hz(void);
	void clear_500hz(void);
	uint32_t get_2hz(uint8_t);
	uint32_t get_10hz(uint8_t);
	uint32_t get_500hz(uint8_t);

	bool set_led_blink(uint8_t);

#ifdef	__cplusplus
}
#endif

#endif	/* MODBUS_MASTER_H */

