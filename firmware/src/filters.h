/* 
 * File:   filters.h
 * Author: root
 *
 * Created on July 5, 2020, 2:27 PM
 */

/*
 * code from: https://hackaday.io/project/1045-pic32-performance-and-peripherials/details
 */

#ifndef FILTERS_H
#define	FILTERS_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <math.h>

	void filters_init(void);
	int32_t lp_filter(int32_t, uint8_t);
	int32_t lp_filter2(int32_t);

#ifdef	__cplusplus
}
#endif

#endif	/* FILTERS_H */

