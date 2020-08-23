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

#define SYS_FREQ	120000000 // Running at 120MHz
#define SAMPLERATE	36000
#define SR120		12000
#define SR240		24000
#define PHASE_INC	(256 * 65536) / SAMPLERATE

#define MOTOR_SPEED	100
#define MOTOR_SLIP	200
#define MBIAS		2000 // current drive flux min for motor stability

//#define ENCODER_PULSES_PER_REV	327680
//#define NUM_POLE_PAIRS		4

#define ENCODER_PULSES_PER_REV	4000
#define NUM_POLE_PAIRS		4

#define PWM_FREQUENCY		MOTOR_SPEED
#define RATED_SPEED_RPM		10
#define SLOW_LOOP_TIME_SEC	1

#define M_PI		(float)3.14159265358979323846
#define PI		M_PI
#define M_PI_2		(float)1.57079632679489661923

#define SQRT3		((float)1.732)
#define SQRT3_BY2	(float)(0.866025403788)

#define ONE_BY_SQRT3	(float)(0.5773502691)
#define TWO_BY_SQRT3	(float)(1.1547005384)

#define QEI_VELOCITY_COUNT_PRESCALER             (float)100.0f
#define ENCODER_PULSES_PER_EREV                  ((uint16_t)((ENCODER_PULSES_PER_REV * 4)/NUM_POLE_PAIRS))
#define QEI_COUNT_TO_ELECTRICAL_ANGLE            (float)(2*M_PI/ENCODER_PULSES_PER_EREV)
#define QEI_VELOCITY_SAMPLE_FREQUENCY            (float)((float)PWM_FREQUENCY / (float)QEI_VELOCITY_COUNT_PRESCALER)
#define QEI_VELOCITY_COUNT_TO_RAD_PER_SEC        (float)(((float)QEI_VELOCITY_SAMPLE_FREQUENCY * 2.0f * M_PI )/((float)ENCODER_PULSES_PER_EREV ))

	/*____________________________ Rated speed of the motor in RPM___________________________________________ */
#define RATED_SPEED_RAD_PER_SEC_ELEC                      (float)(RATED_SPEED_RPM *(2*(float)M_PI/60) * NUM_POLE_PAIRS)
#define CLOSE_LOOP_RAMP_RATE                              (600) /* RPM per sec */
#define RAMP_RAD_PER_SEC_ELEC                             (float)(CLOSE_LOOP_RAMP_RATE * NUM_POLE_PAIRS * PI/30.0)
#define SPEED_RAMP_INC_SLOW_LOOP                          (float)(RAMP_RAD_PER_SEC_ELEC*SLOW_LOOP_TIME_SEC)

#define SINGLE_ELEC_ROT_RADS_PER_SEC                      ((float)((float)(2.0) * (float)M_PI))

#define HB_OHMS		100
#define ADC_STEPS	4096.0 // 12-bit
#define ADC_REF		2.5
#define HB_SCALE	420.168

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <proc/p32mk1024mcf100.h>
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

#ifdef	__cplusplus
}
#endif

#endif	/* VCAN_H */

