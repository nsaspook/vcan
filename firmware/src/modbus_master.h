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

#define MB_MASTER
#define MB_EM540
#define SWVER		0x0032;
#define MADDR		0x01 // modbus client address

	/*
	 * fake good received bytes from client
	 */
#define	DBUG_R	//	true ||
	/*
	 * Display MODBUS debugging info screen
	 */
	//#define MODBUS_DEBUG

#include "vcan.h"
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include "vcan.h"


#define MAX_DATA        128
	//#define LOCAL_ECHO	1
#define FASTQ			// MODBUS query speed
#define TDELAY		2	// half-duplex delay
#define RDELAY		300	// receive timeout
#define CDELAY		40	// fast query delay
#define QDELAY		1	// query delay
#define TODELAY		4	// misc delay	

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

	union MREG32 {
		int32_t value;
		char bytes[4];
	};

	typedef struct C_data { // client state machine data
		uint8_t mcmd;
		comm_type cstate;
		cmd_type modbus_command;
		uint16_t req_length;
		uint8_t trace;
	} C_data;

	typedef struct M_data { // ISR used, mainly for non-atomic mod problems
		uint32_t clock_500hz;
		uint32_t clock_10hz;
		uint32_t clock_2hz;
		uint8_t clock_blinks;
		uint8_t num_blinks;
		uint8_t blink_lock : 1;
		uint8_t config : 1;
		uint8_t stable : 1;
		uint8_t boot_code : 1;
		uint8_t power_on : 1;
		uint8_t send_count, recv_count, pwm_volts;
		uint16_t error, crc_data, crc_calc;
		uint32_t crc_error;
		uint32_t to_error;
		uint32_t sends;
	} M_data;

	typedef struct EM_data {
		int32_t vl1n, vl2n, vl3n,
		vl1l2, vl2l3, vl3l1,
		al1, al2, al3,
		wl1, wl2, wl3;
	} EM_data;

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
	uint8_t init_stream_params(void);
	int8_t master_controller_work(C_data *);
	int32_t mb32_swap(int32_t);

	void clear_2hz(void);
	void clear_10hz(void);
	void clear_500hz(void);
	uint32_t get_2hz(uint8_t);
	uint32_t get_10hz(uint8_t);
	uint32_t get_500hz(uint8_t);

	bool set_led_blink(uint8_t);

	void timer_500ms_tick(uint32_t, uintptr_t);
	void timer_2ms_tick(uint32_t, uintptr_t);

	extern C_data C; // MODBUS client state data
	extern volatile M_data M;
	extern EM_data em;

#ifdef	__cplusplus
}
#endif

#endif	/* MODBUS_MASTER_H */

