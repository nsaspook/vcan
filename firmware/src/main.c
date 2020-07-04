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

#include "vcan.h"
#include "dio.h"

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
	//	IOCON2bits.OVRDAT = 3;

	switch (mmode) {
	case M_PWM:
		IOCON2bits.OVRENH = 0;
		IOCON2bits.OVRENL = 0;
		break;
	case M_CW:
		IOCON2bits.OVRDAT = 1;
		IOCON2bits.OVRENH = 1;
		IOCON2bits.OVRENL = 1;
		break;
	case M_CCW:
		IOCON2bits.OVRDAT = 2;
		IOCON2bits.OVRENH = 1;
		IOCON2bits.OVRENL = 1;
		break;
	case M_STOP:
	default:
		IOCON2bits.OVRDAT = 3;
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
	char buffer[40];
	int32_t u1ai = 0, u1bi = 0, u2ai = 0, u2bi = 0;

	//	struct tm Time = {0};

	/* Initialize all modules */
	SYS_Initialize(NULL);

	/*
	 * start the external switch handler
	 */
	init_dio();

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
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, m35_2.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, m35_2.duty);
	MCPWM_Start();

	PWM_motor2(M_STOP);

	/*
	 * AN14/pin 6, AN23/pin 7, AN36/pin 4, AN37/pin 5, AN11/pin 2, AN17/pin 11
	 * set ADC trigger to SCAN and start SCAN trigger
	 */
	ADCCON1bits.STRGSRC = 1;
	ADCCON3bits.GSWTRG = 1;

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
			sprintf(buffer, "c %7i:%i %i ", m35_ptr->pos, m35_ptr->vel, u1ai);
			eaDogM_WriteStringAtPos(1, 0, buffer);
			m35_ptr = &m35_2;
			sprintf(buffer, "c %7i:%i %i ", m35_ptr->pos, m35_ptr->vel, u1bi);
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

			/*
			 * check for ADC scanning done, a 'end of scan' interrupt ISR could also handle this
			 */
			if (ADCCON2bits.EOSRDY) { //  End of Scan Interrupt Status bit
				/*
				 * update program variables from the ADC result registers
				 */
				u2ai = ADCHS_ChannelResultGet(ADCHS_CH23); // JP5 pin 7, AN23, FBB2/RG15
				u2bi = ADCHS_ChannelResultGet(ADCHS_CH14); // JP5 pin 6, AN14, FBA2/RE14
				u1ai = ADCHS_ChannelResultGet(ADCHS_CH37); // JP5 pin 5, AN37, FBA1/RF12
				u1bi = ADCHS_ChannelResultGet(ADCHS_CH36); // JP5 pin 4, AN36, FBB1/RF13
				ADCCON3bits.GSWTRG = 1; // re-trigger scan
			}

			/*
			 * show some test results on the LCD screen
			 */
			sprintf(buffer, " %i %i  %i %i    ", m35_2.error, m35_2.duty, u2ai, u2bi);
			eaDogM_WriteStringAtPos(0, 0, buffer);

			/*
			 * test switch interface with motor control
			 */
			if (get_switch(S1))
				PWM_motor2(M_CW);


			if (get_switch(S0))
				PWM_motor2(M_CCW);

			/*
			 * set channel duty cycle for comp H/L outputs
			 */
			MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, m35_2.duty);
			MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, m35_2.duty);
			MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, m35_2.duty);
			MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, m35_2.duty);

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

