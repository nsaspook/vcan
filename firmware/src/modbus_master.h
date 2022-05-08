/* 
 * File:   modbus_master.h
 * Author: root
 *
 * Created on April 27, 2022, 4:02 PM
 */

/*
 * Simple MODBUS data polling master for PIC32MK on USART6 using Harmony 3
 * the USART port uses interrupt driven buffered I/O
 * hard coded for data collection from a EM540 3-phase power monitor
 * https://www.gavazzionline.com/pdf/EM540_DS_ENG.pdf
 */


#ifndef MODBUS_MASTER_H
#define	MODBUS_MASTER_H

#ifdef	__cplusplus
extern "C" {
#endif

#define MB_MASTER
#define MB_EM540
#define SWMBMVER	0X0033	// master SW version
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

#define MAX_DATA        128
	//#define LOCAL_ECHO	1
#define FASTQ			// MODBUS query speed
#define TDELAY		2	// half-duplex delay
#define RDELAY		300	// receive timeout
#define CDELAY		40	// fast query delay
#define QDELAY		1	// query delay
#define TODELAY		4	// misc delay

	/*
	 * RS485 port defines
	 * port is configured in harmony3 for PIC32MK
	 */
#define Swrite		UART6_Write
#define Strmt		U6STA&_U6STA_TRMT_MASK
#define Serror		UART6_ErrorGet
#define Sread		UART6_Read

	/*
	 * serial communications states
	 */
	typedef enum comm_type {
		CLEAR = 0,
		INIT,
		SEND,
		RECV,
	} comm_type;

	typedef enum cmd_type {
		G_ID = 0,
		G_DATA,
		G_CONFIG, // keep sequence
		G_PASSWD, // keep sequence
		G_LAST,
	} cmd_type;

	typedef enum trace_type {
		T_begin = 1,
		T_clear,
		T_passwd,
		T_config,
		T_data,
		T_id,
		T_init,
		T_init_d,
		T_send,
		T_send_d,
		T_recv,
		T_recv_r,
		T_misc1,
		T_misc2,
		T_misc3,
	} trace_type;

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
		bool id_ok, passwd_ok, config_ok, data_ok;
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

	// code from libmodbus: https://raw.githubusercontent.com/stephane/libmodbus/master/src/modbus-rtu.c

	/* Table of CRC values for high-order byte */
	static const uint8_t table_crc_hi[] = {
		0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0,
		0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41,
		0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0,
		0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40,
		0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1,
		0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41,
		0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1,
		0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41,
		0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0,
		0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40,
		0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1,
		0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40,
		0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0,
		0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40,
		0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0,
		0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40,
		0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0,
		0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41,
		0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0,
		0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41,
		0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0,
		0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40,
		0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1,
		0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41,
		0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0,
		0x80, 0x41, 0x00, 0xC1, 0x81, 0x40
	};

	/* Table of CRC values for low-order byte */
	static const uint8_t table_crc_lo[] = {
		0x00, 0xC0, 0xC1, 0x01, 0xC3, 0x03, 0x02, 0xC2, 0xC6, 0x06,
		0x07, 0xC7, 0x05, 0xC5, 0xC4, 0x04, 0xCC, 0x0C, 0x0D, 0xCD,
		0x0F, 0xCF, 0xCE, 0x0E, 0x0A, 0xCA, 0xCB, 0x0B, 0xC9, 0x09,
		0x08, 0xC8, 0xD8, 0x18, 0x19, 0xD9, 0x1B, 0xDB, 0xDA, 0x1A,
		0x1E, 0xDE, 0xDF, 0x1F, 0xDD, 0x1D, 0x1C, 0xDC, 0x14, 0xD4,
		0xD5, 0x15, 0xD7, 0x17, 0x16, 0xD6, 0xD2, 0x12, 0x13, 0xD3,
		0x11, 0xD1, 0xD0, 0x10, 0xF0, 0x30, 0x31, 0xF1, 0x33, 0xF3,
		0xF2, 0x32, 0x36, 0xF6, 0xF7, 0x37, 0xF5, 0x35, 0x34, 0xF4,
		0x3C, 0xFC, 0xFD, 0x3D, 0xFF, 0x3F, 0x3E, 0xFE, 0xFA, 0x3A,
		0x3B, 0xFB, 0x39, 0xF9, 0xF8, 0x38, 0x28, 0xE8, 0xE9, 0x29,
		0xEB, 0x2B, 0x2A, 0xEA, 0xEE, 0x2E, 0x2F, 0xEF, 0x2D, 0xED,
		0xEC, 0x2C, 0xE4, 0x24, 0x25, 0xE5, 0x27, 0xE7, 0xE6, 0x26,
		0x22, 0xE2, 0xE3, 0x23, 0xE1, 0x21, 0x20, 0xE0, 0xA0, 0x60,
		0x61, 0xA1, 0x63, 0xA3, 0xA2, 0x62, 0x66, 0xA6, 0xA7, 0x67,
		0xA5, 0x65, 0x64, 0xA4, 0x6C, 0xAC, 0xAD, 0x6D, 0xAF, 0x6F,
		0x6E, 0xAE, 0xAA, 0x6A, 0x6B, 0xAB, 0x69, 0xA9, 0xA8, 0x68,
		0x78, 0xB8, 0xB9, 0x79, 0xBB, 0x7B, 0x7A, 0xBA, 0xBE, 0x7E,
		0x7F, 0xBF, 0x7D, 0xBD, 0xBC, 0x7C, 0xB4, 0x74, 0x75, 0xB5,
		0x77, 0xB7, 0xB6, 0x76, 0x72, 0xB2, 0xB3, 0x73, 0xB1, 0x71,
		0x70, 0xB0, 0x50, 0x90, 0x91, 0x51, 0x93, 0x53, 0x52, 0x92,
		0x96, 0x56, 0x57, 0x97, 0x55, 0x95, 0x94, 0x54, 0x9C, 0x5C,
		0x5D, 0x9D, 0x5F, 0x9F, 0x9E, 0x5E, 0x5A, 0x9A, 0x9B, 0x5B,
		0x99, 0x59, 0x58, 0x98, 0x88, 0x48, 0x49, 0x89, 0x4B, 0x8B,
		0x8A, 0x4A, 0x4E, 0x8E, 0x8F, 0x4F, 0x8D, 0x4D, 0x4C, 0x8C,
		0x44, 0x84, 0x85, 0x45, 0x87, 0x47, 0x46, 0x86, 0x82, 0x42,
		0x43, 0x83, 0x41, 0x81, 0x80, 0x40
	};


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
	void init_mb_master_timers(void);
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

	extern volatile struct V_type V;
	extern C_data C; // MODBUS client state data
	extern volatile M_data M;
	extern EM_data em;

#ifdef	__cplusplus
}
#endif

#endif	/* MODBUS_MASTER_H */

