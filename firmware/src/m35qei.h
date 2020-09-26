/* 
 * File:   m35qei.h
 * Author: root
 *
 * Created on July 8, 2018, 1:58 PM
 */

#ifndef M35QEI_H
#define	M35QEI_H

#ifdef	__cplusplus
extern "C" {
#endif
#include "vcan.h"

	//#define NOINDEX

#define sine_res	3600
#define sinea		0
#define	sineb		1200
#define sinec		2400

	/*
	 * PI limits
	 */
#define error_gain	1
#define herror_gain	1

#define pos_gain	1

#define duty_max	12000
#define	duty_safe	duty_max/8

#define hpwm_mid_duty	duty_max/2
#define hpwm_mid_duty_f	duty_max/2.0

//#define hpwm_mid_duty	3000
//#define hpwm_mid_duty_f	3000.0
#define hpwm_high_duty	duty_max-1
#define hpwm_low_duty	1

#if ENCODER_PULSES_PER_REV < 8000
#define motor_error_stop	ENCODER_PULSES_PER_REV/2000
#define motor_volts	2800 // limits amount of current at max torque, TI motor
#else
#define motor_error_stop	30
#define motor_volts	5000 // limits amount of current at max torque, MCHP motor
#endif
#define motor_error_coast	100
#define motor_error_knee	200




	/*
	 * angles to encoder counts
	 */
#define a16_0		0x0000
#define a16_30		0x1555
#define a16_60		0x2aaa
#define a16_90		0x4000
#define a16_120		0x5555

	/*
	 * QEI #1 pin connections
	 * 
	 * QEA1 RPA0
	 * QEB1 RPA14
	 * INDX1 RPB6
	 * HOME1 RPB9
	 * 
	 * QEI #2 pin connections
	 * 
	 * QEA2 RPC10
	 * QEB2 RPC1
	 * INDX2 RPB1
	 * HOME2 RPG6
	 */

	/*
	 * encoder device data
	 */
	struct QEI_DATA {
		int32_t pos, vel, duty, error, speed, hold, gain, sine_steps, current, current_prev;
		int32_t indexcnt, indexvel, ppp, sine_zero;
		uint32_t pole_pairs, ppr, phaseAccumulator, phaseIncrement, phase_steps, erotations;
		double sin, mi1, mi2, mi3;
		bool cw, ccw, stopped, set;
	};

	typedef enum {
		M_STOP,
		M_CW,
		M_CCW,
		M_PWM,
	} M_CTRL;


#ifdef	__cplusplus
}
#endif

#endif	/* M35QEI_H */

