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

	void sine_table(void);
	int32_t phase_duty(struct QEI_DATA *, double, M_SPEED);
	int32_t phase_duty_table(struct QEI_DATA *, double);
	void fillTable(void);
	void preset_phase(void);

#ifdef	__cplusplus
}
#endif

#endif	/* FREQGEN_H */

