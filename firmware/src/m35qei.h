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

	//#define high_pwm
	
#define sine_res	3600
#define sinea		0
#define	sineb		1200
#define sinec		2400

#define error_gain	1
#define herror_gain	1

#define pos_gain	10
#define pwm_mid_duty	1000
#define pwm_high_duty	1999
#define pwm_low_duty	1

#ifdef high_pwm
#define hpwm_mid_duty	18000
#define hpwm_mid_duty_f	18000.0
#define hpwm_high_duty	35999
#define hpwm_low_duty	1
#else
#define hpwm_mid_duty	650
#define hpwm_mid_duty_f	650.0
#define hpwm_high_duty	1100
#define hpwm_low_duty	100
#endif

#define motor_error_stop	100
#define motor_error_coast	100
#define motor_error_knee	200

#define motor_speed	3000

#ifdef high_pwm
#define motor_volts	5000.0
#else
#define motor_volts	400.0
#endif
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
	typedef struct {
		int32_t pos, vel, duty, error, speed, hold, gain, sine_steps;
	} QEI_DATA;

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

