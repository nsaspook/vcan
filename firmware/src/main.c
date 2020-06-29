/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <stdio.h>
#include <string.h>
#include "tests.h"
#include "m35qei.h"
#include "config/default/peripheral/rtcc/plib_rtcc.h"


extern QEI_DATA m35_1, m35_2, *m35_ptr;
void reset_led_blink(uintptr_t);

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main(void)
{
	char strbuf[80];
	//	struct tm Time = {0};
#ifdef BOARD_TESTS
	int i = 0;
#endif

	/* Initialize all modules */
	SYS_Initialize(NULL);

	QEI1_Start();
	QEI2_Start();
	m35_ptr = &m35_1;

	m35_ptr->update = 0;
	LATGbits.LATG12 = true;
	LATGbits.LATG13 = true;
	LATGbits.LATG14 = true;
	RTCC_CallbackRegister(reset_led_blink, 1);
	//	RTCC_TimeGet(&Time);
	//	RTCC_AlarmSet(&Time, RTCC_ALARM_MASK_SS);
	RTCC_InterruptEnable(RTCC_ALARM_MASK_SS);

	while (true) {
		/* Maintain state machines of all polled MPLAB Harmony modules. */
		SYS_Tasks();

		/* update local value of the encoder position counter */
#ifndef BOARD_TESTS
		m35_ptr->pos = POS1CNT;
		m35_ptr->vel = VEL1CNT;
#endif

		if (m35_ptr->update++ > 20480) {
#ifdef BOARD_TESTS
			if (++i > 8) {
				i = 0;
				m35_ptr->pos += 1 << 10;
			}
#endif
			
			/* flash the board led(s) using the position counter bits */
#ifdef QEI_SLOW
			LATGbits.LATG12 = m35_ptr->pos >> 3;
			LATGbits.LATG13 = m35_ptr->pos >> 5;
			LATGbits.LATG14 = m35_ptr->pos >> 7;
#else
			LATGbits.LATG12 = m35_ptr->pos >> 10;
			LATGbits.LATG13 = m35_ptr->pos >> 12;
			LATGbits.LATG14 = m35_ptr->pos >> 14;
#endif

			/* send to uart3 the current QEI values */
			sprintf(strbuf, "c %7i:v %4i\r\n", m35_ptr->pos, m35_ptr->vel);
			UART3_Write((uint8_t*) strbuf, strlen(strbuf));
			m35_ptr->update = 0;
		} else {
			//run_tests(100000); // port diagnostics
		}
	}

	/* Execution should not come here during normal operation */

	return( EXIT_FAILURE);
}

void reset_led_blink(uintptr_t context)
{
	RESET_LED_Toggle();
}

/*******************************************************************************
 End of File
 */

