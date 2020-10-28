/* 
 * File:   display_type.h
 * Author: root
 *
 * Created on August 18, 2020, 3:04 PM
 */

#ifndef DISPLAY_TYPE_H
#define	DISPLAY_TYPE_H

#ifdef	__cplusplus
extern "C" {
#endif

	//Select the display type: DOGS102: 102, DOGM128/DOGL128: 128, DOGM132: 132, DOGXL160: 160, DOGXL240: 240
#define DISPLAY_TYPE  240

#include "definitions.h"                // SYS function prototypes
#include "config/pic32mk_mcj_curiosity_pro/peripheral/spi/spi_master/plib_spi1_master.h"
#include "config/pic32mk_mcj_curiosity_pro/peripheral/../peripheral/gpio/plib_gpio.h"

#ifdef	__cplusplus
}
#endif

#endif	/* DISPLAY_TYPE_H */

