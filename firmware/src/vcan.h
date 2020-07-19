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

#define SYS_FREQ 120000000 // Running at 120MHz

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

