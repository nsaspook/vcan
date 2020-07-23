/* 
 * File:   freqgen.h
 * Author: root
 *
 * Created on July 22, 2020, 11:58 AM
 */

#ifndef FREQGEN_H
#define	FREQGEN_H

#ifdef	__cplusplus
extern "C" {
#endif
#include "vcan.h"
#define     TOTAL_SINE_TABLE_ANGLE                 (2*(float)M_PI)
#define     TABLE_SIZE                              256
#define     ANGLE_STEP                             (TOTAL_SINE_TABLE_ANGLE/(float)TABLE_SIZE)
#define     ONE_BY_ANGLE_STEP                      (1/ANGLE_STEP)


	// *****************************************************************************
	// *****************************************************************************
	// Section: Interface Routines
	// *****************************************************************************
	// *****************************************************************************
	void MCLIB_SinCosCalc(float const rotor_angle, float* sineAngle, float* cosAngle);
	void MCLIB_WrapAngle(float * const angle);
	void sine_table(void);
	int32_t phase_duty(struct QEI_DATA * const, const double, const M_SPEED);
	int32_t phase_duty_table(struct QEI_DATA * const, const double);
	void fillTable(void);
	void preset_phase(void);

#ifdef	__cplusplus
}
#endif

#endif	/* FREQGEN_H */

