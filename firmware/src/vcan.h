/* 
 * File:   vcan.h
 * Author: root
 *
 * Created on July 4, 2020, 9:42 AM
 */

#ifndef VCAN_H
#define	VCAN_H

#ifdef	__cplusplus
extern "C" {
#endif
	/*
	 * VCAN project header file
	 */
#include <xc.h>
#include <math.h>
#include <stdio.h>

#define _PCACHE_VECTOR                           247

	/* Use Brushed DC Motor routines */
#define BDCM

	/*
	 * jumper pin settings JP4
	 * RF1	option1		special configurations for board testing
	 * RG1	option2		motor/encoder configurations
	 */

#define SYS_FREQ	120000000 // Running at 120MHz
#define SAMPLERATE	36000
#define SR120		12000
#define SR240		24000
#define PHASE_INC	(256 * 65536) / SAMPLERATE

#define MOTOR_SPEED	1	// sinewave update divider
#define MOTOR_UPDATES	1	// main motor loop timer in ms
#define HVDC_M			// 24 + volts for motor drive

	//#define ENCODER_PULSES_PER_REV	327680 // m35 encoder
	//#define ENCODER_PULSES_PER_REV	8000 // AC servo motor encoder
#define ENCODER_PULSES_PER_REV	4000 // TEKNIC motor encoder, HURST BLDC motor encoder

#if ENCODER_PULSES_PER_REV < 9000
#ifdef HVDC_M
#define MBLOCK			1600
#define MIDLE			1500  // motor idle current
#define MPCURRENT		800  // setpoint for motor current
#define motor_error_stop	ENCODER_PULSES_PER_REV/2000
#define motor_volts		1800 // limits amount of current at max torque, TI motor and AC servo motor
#else
#define MBLOCK			2200
#define MIDLE			2400  // motor idle current
#define MPCURRENT		1200  // setpoint for motor current
#define motor_error_stop	ENCODER_PULSES_PER_REV/2000
#define motor_volts		2800 // limits amount of current at max torque, TI motor and AC servo motor
#endif
#else
#define MBLOCK			2200
#define MIDLE			2400  // motor idle current
#define MPCURRENT		1200  // setpoint for motor current
#define motor_error_stop	30
#define motor_volts		5000 // limits amount of current at max torque, MCHP motor with m35
#endif

#define NUM_POLES		8
#define NUM_POLE_PAIRS		NUM_POLES/2

	//	#define	SLIP_DRIVE // motor constant slew at calculated speed
#define MOTOR_SLIP	-670

#define PWM_FREQUENCY		MOTOR_SPEED
#define RATED_SPEED_RPM		10
#define SLOW_LOOP_TIME_SEC	1	

#define PI		M_PI
#define PI2		M_PI*2.0

#define SQRT3		((float)1.732)
#define SQRT3_BY2	(float)(0.866025403788)

#define ONE_BY_SQRT3	(float)(0.5773502691)
#define TWO_BY_SQRT3	(float)(1.1547005384)

#define QEI_VELOCITY_COUNT_PRESCALER             (float)100.0f
#define ENCODER_PULSES_PER_EREV                  ((uint32_t)((ENCODER_PULSES_PER_REV)/NUM_POLE_PAIRS))
#define QEI_COUNT_TO_ELECTRICAL_ANGLE            (float)(2*M_PI/ENCODER_PULSES_PER_EREV)
#define QEI_VELOCITY_SAMPLE_FREQUENCY            (float)((float)PWM_FREQUENCY / (float)QEI_VELOCITY_COUNT_PRESCALER)
#define QEI_VELOCITY_COUNT_TO_RAD_PER_SEC        (float)(((float)QEI_VELOCITY_SAMPLE_FREQUENCY * 2.0f * M_PI )/((float)ENCODER_PULSES_PER_EREV ))
#define QEI_PER_MREV				 (double) ((double) ENCODER_PULSES_PER_REV) / (double)3600.0

	/*____________________________ Rated speed of the motor in RPM___________________________________________ */
#define RATED_SPEED_RAD_PER_SEC_ELEC                      (float)(RATED_SPEED_RPM *(2*(float)M_PI/60) * NUM_POLE_PAIRS)
#define CLOSE_LOOP_RAMP_RATE                              (600) /* RPM per sec */
#define RAMP_RAD_PER_SEC_ELEC                             (float)(CLOSE_LOOP_RAMP_RATE * NUM_POLE_PAIRS * PI/30.0)
#define SPEED_RAMP_INC_SLOW_LOOP                          (float)(RAMP_RAD_PER_SEC_ELEC*SLOW_LOOP_TIME_SEC)

#define SINGLE_ELEC_ROT_RADS_PER_SEC                      ((float)((float)(2.0) * (float)M_PI))

#define HB_OHMS		100
#define ADC_REF		2.5
#define ADC_STEPS	4096.0/ADC_REF // 12-bit
#define ONE_VOLT	1000.0
#define MV_STEP		(ONE_VOLT/ADC_STEPS)
#define TEMP_OFFSET_ADC_STEPS	1181.96
#define TEMP_MV_C		1.56

#define HB_SCALE	42.0
#define MOTOR_CURRENT_SCALE	1.41 // square root of 2

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <stdio.h>
#include <string.h>
#include <math.h>
#include "config/default/definitions.h"                 // SYS function prototypes
#include "tests.h"
#include "m35qei.h"
#include "config/default/peripheral/rtcc/plib_rtcc.h"
#include "eadog.h"

	typedef enum {
		V_init,
		V_home,
		V_run,
		V_abort,
	} V_STATE;

	typedef enum {
		M_SLEW,
		M_SLOW,
		M_ZERO,
	} M_SPEED;

	struct V_type {
		uint32_t StartTime, TimeUsed;
		volatile uint32_t pacing, pwm_update, pwm_stop;
		V_STATE vcan_state;
		M_SPEED m_speed;
		int32_t motor_speed;
	};

	struct DC_type {
		int32_t j, m_type;
		bool end_lock, end_max;
		int32_t m_pos, m_error, m_set, bm_pid, m_end;
	};

#define KNOB1_INC	POS3CNT
#define MOTOR2_INC	POS2CNT
#define MOTOR1_INC	POS1CNT

#define MOTOR_INC	MOTOR1_INC

#ifdef	__cplusplus
}
#endif

#endif	/* VCAN_H */

