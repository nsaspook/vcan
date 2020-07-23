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
#define PI		3.1415926535
#define MOTOR_SPEED	10000

#define MBIAS		0

#define     M_PI                                     (float)3.14159265358979323846
#define     M_PI_2                                     (float)1.57079632679489661923

#define     SQRT3                                   ((float)1.732)
#define     SQRT3_BY2                              (float)(0.866025403788)

#define     ONE_BY_SQRT3                           (float)(0.5773502691)
#define     TWO_BY_SQRT3                           (float)(1.1547005384)

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

