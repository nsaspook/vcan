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


QEI_DATA m35_1 = {
	.gain = pos_gain,
},
m35_2 = {
	.duty = 1000,
	.gain = error_gain,
},
*m35_ptr;

void reset_led_blink(uintptr_t);

static void PWM_motor2(M_CTRL mmode)
{
	IOCON2bits.OVRDAT = 3;

	switch (mmode) {
	case M_PWM:
		IOCON2bits.OVRENH = 0;
		IOCON2bits.OVRENL = 0;
		break;
	case M_CW:
		IOCON2bits.OVRENH = 0;
		IOCON2bits.OVRENL = 1;
		break;
	case M_CCW:
		IOCON2bits.OVRENH = 1;
		IOCON2bits.OVRENL = 0;
		break;
	case M_STOP:
	default:
		IOCON2bits.OVRENH = 1;
		IOCON2bits.OVRENL = 1;
		break;
	}

}

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

	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, m35_2.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, m35_2.duty);
	MCPWM_Start();

	PWM_motor2(M_STOP);

	while (true) {
		/* Maintain state machines of all polled MPLAB Harmony modules. */
		SYS_Tasks();

		if (m35_ptr->update++ > 20480) {
			m35_ptr->update = 0;

			/* update local value of the encoder position counters */
			m35_1.pos = POS1CNT;
			m35_1.vel = VEL1CNT;
			m35_2.pos = POS2CNT;
			m35_2.vel = VEL2CNT;

			/* flash the board led(s) using the position counter bits */
#ifdef QEI_SLOW
			LATGbits.LATG12 = m35_1.pos >> 3;
			LATGbits.LATG13 = m35_1.pos >> 5;
			LATGbits.LATG14 = m35_2.pos >> 6;
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


			m35_2.error = (m35_1.pos * m35_1.gain) - m35_2.pos;

			m35_2.duty = pwm_mid_duty - (m35_2.error * m35_2.gain);
			if (m35_2.duty > pwm_high_duty)
				m35_2.duty = pwm_high_duty;
			if (m35_2.duty < pwm_low_duty)
				m35_2.duty = pwm_low_duty;

			if (abs(m35_2.error) < motor_error_stop) {
				PWM_motor2(M_STOP);
			} else {
				if (abs(m35_2.error) < motor_error_knee)
					m35_2.duty = m35_2.duty + (m35_2.vel * 4);
				if (abs(m35_2.error) < motor_error_coast)
					m35_2.duty = m35_2.duty + (m35_2.vel * 2);

				PWM_motor2(M_PWM);
			}

			sprintf(buffer, " %i %i        ", m35_2.error, m35_2.duty);
			eaDogM_WriteStringAtPos(0, 0, buffer);

			MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, m35_2.duty);
			MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, m35_2.duty);

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

