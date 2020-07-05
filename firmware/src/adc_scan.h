/* 
 * File:   adc_scan.h
 * Author: root
 *
 * Created on July 5, 2020, 9:05 AM
 */

#ifndef ADC_SCAN_H
#define	ADC_SCAN_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "vcan.h"

	typedef enum {
		FBA1 = 0,
		FBB1,
		FBA2,
		FBB2,
		POT1,
		POT2,
		ANA1,
		IVREF,
		VBAT2,
		TSENSOR,
		NUM_AN, // one extra to define number of ADC SOURCES
	} AN_NAMES;

	extern volatile int32_t u1ai, u1bi, u2ai, u2bi, an_data[NUM_AN];

	void end_of_adc_scan(void);
	void init_end_of_adc_scan(void);

#ifdef	__cplusplus
}
#endif

#endif	/* ADC_SCAN_H */

