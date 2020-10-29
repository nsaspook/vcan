/* 
 * File:   imu.h
 * Author: root
 *
 * Created on October 24, 2020, 3:05 PM
 */

#ifndef IMU_H
#define	IMU_H

#ifdef	__cplusplus
extern "C" {
#endif
#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes

#define NVM_STARTVADDRESS	0x9d008000  // virtual address
#define NVM_STARTPADDRESS	0x1d008000  // physical address
	
#define CAL_DIS_MS		50	// calibration data element screen display time

	extern const volatile uint32_t myflash[4096] __attribute__((section("myflash"), space(prog), address(NVM_STARTVADDRESS)));
	extern uint32_t *pmyflash;

	uint32_t nvram_in(uint8_t);
	uint32_t nvram_out(void *, uint32_t); // flash word must be erased first
	bool get_nvram_str(uint8_t, char *);
	bool set_nvram_str(uint32_t *, char *); // flash space must be erased first

#ifdef	__cplusplus
}
#endif

#endif	/* IMU_H */

