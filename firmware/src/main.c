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
#include "eadog.h"


QEI_DATA m35_1,
	m35_2 = {
	.hb1h = 1000,
	.hb1l = 1000,
},
*m35_ptr;

void reset_led_blink(uintptr_t);

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main(void)
{
	//	char strbuf[80];
	char buffer[40];

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
	//	RTCC_CallbackRegister(reset_led_blink, 1);
	//	RTCC_TimeGet(&Time);
	//	RTCC_AlarmSet(&Time, RTCC_ALARM_MASK_SS);
	//	RTCC_InterruptEnable(RTCC_ALARM_MASK_SS);

	init_display();
	eaDogM_CursorOff();

	sprintf(buffer, " VCAN Testing ");
	eaDogM_WriteStringAtPos(0, 0, buffer);
	MCPWM_Start();
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, m35_2.hb1h);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, m35_2.hb1l);
	//	MCPWM_ChannelPinsOwnershipDisable(MCPWM_CH_1);
	//	MCPWM_Stop();
	//	TRISBbits.TRISB14=0;
	//	TRISBbits.TRISB15=0;
	//	LATBbits.LATB14=0;
	//	LATBbits.LATB15=1;


	while (true) {
		/* Maintain state machines of all polled MPLAB Harmony modules. */
		SYS_Tasks();

		/* update local value of the encoder position counter */
#ifndef BOARD_TESTS
		m35_1.pos = POS1CNT;
		m35_1.vel = VEL1CNT;
		m35_2.pos = POS2CNT;
		m35_2.vel = VEL2CNT;
#endif

		if (m35_ptr->update++ > 20480) {
			m35_ptr->update = 0;
#ifdef BOARD_TESTS
			if (++i > 8) {
				i = 0;
				m35_ptr->pos += 1 << 10;
			}
#endif

			/* flash the board led(s) using the position counter bits */
#ifdef QEI_SLOW
			LATGbits.LATG12 = m35_1.pos >> 3;
			LATGbits.LATG13 = m35_1.pos >> 5;
			LATGbits.LATG14 = m35_2.pos >> 12;
#else
			LATGbits.LATG12 = m35_ptr->pos >> 10;
			LATGbits.LATG13 = m35_ptr->pos >> 12;
			LATGbits.LATG14 = m35_ptr->pos >> 14;
#endif

			/* format and send data to LCD screen */
			sprintf(buffer, "c %7i:%i  ", m35_ptr->pos, m35_ptr->vel);
			eaDogM_WriteStringAtPos(1, 0, buffer);
			m35_ptr = &m35_2;
			sprintf(buffer, "c %7i:%i  ", m35_ptr->pos, m35_ptr->vel);
			eaDogM_WriteStringAtPos(2, 0, buffer);
			m35_ptr = &m35_1;

			m35_2.hb1h = 1000 - (m35_1.pos >> 2);
			m35_2.hb1l = 1000 + (m35_1.pos >> 2);
			MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, m35_2.hb1h);
			MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, m35_2.hb1l);
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

