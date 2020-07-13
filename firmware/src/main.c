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
#include "adc_scan.h"
#include "timers.h"

QEI_DATA m35_1 = {
	.duty = 18000, // fast motor duty
	.gain = pos_gain, // input position gain
},
m35_2 = {
	.duty = 18000, // slow motor duty
	.gain = error_gain, // motor position gain
	.sine_steps = 0,
},
m35_3 = {
	.duty = 18000,
	.sine_steps = 1200,
},
m35_4 = {
	.duty = 18000,
	.gain = herror_gain, // PWM sine-wave gain
	.sine_steps = 2400,
	.speed = motor_speed,
},

*m35_ptr;
volatile int32_t u1ai = 0, u1bi = 0, u2ai = 0, u2bi = 0, an_data[NUM_AN];
volatile uint16_t tickCount[TMR_COUNT];

double sine_const[3600];

void sine_table(double *);
int32_t phase_duty(QEI_DATA *, float);

void PWM_motor2(M_CTRL mmode)
{
	IOCON2bits.OVRDAT = 3;
	IOCON1bits.OVRDAT = 3;

	switch (mmode) {
	case M_PWM:
		IOCON2bits.OVRENH = 0;
		IOCON2bits.OVRENL = 0;
		IOCON1bits.OVRENH = 0;
		IOCON1bits.OVRENL = 0;
		IOCON3bits.OVRENH = 0;
		IOCON3bits.OVRENL = 0;
		IOCON4bits.OVRENH = 0;
		IOCON4bits.OVRENL = 0;
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
		//		IOCON2bits.OVRDAT = 0;
		//		IOCON2bits.OVRENH = 1;
		//		IOCON2bits.OVRENL = 1;
		IOCON1bits.OVRDAT = 0;
		IOCON1bits.OVRENH = 1;
		IOCON1bits.OVRENL = 1;
		//		IOCON4bits.OVRDAT = 0;
		//		IOCON4bits.OVRENH = 1;
		//		IOCON4bits.OVRENL = 1;
		//		IOCON3bits.OVRDAT = 0;
		//		IOCON3bits.OVRENH = 1;
		//		IOCON3bits.OVRENL = 1;
		break;
	}

}

void PWM_motor4(M_CTRL mmode)
{
	IOCON2bits.OVRDAT = 3;

	switch (mmode) {
	case M_PWM:
		IOCON4bits.OVRENH = 0;
		IOCON4bits.OVRENL = 0;
		break;
	case M_CW:
		IOCON4bits.OVRDAT = 1;
		IOCON4bits.OVRENH = 1;
		IOCON4bits.OVRENL = 1;
		break;
	case M_CCW:
		IOCON4bits.OVRDAT = 2;
		IOCON4bits.OVRENH = 1;
		IOCON4bits.OVRENL = 1;
		break;
	case M_STOP:
	default:
		IOCON4bits.OVRDAT = 0;
		IOCON4bits.OVRENH = 1;
		IOCON4bits.OVRENL = 1;
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

	//	struct tm Time = {0};

	/* Initialize all modules */
	SYS_Initialize(NULL);

	/*
	 * start the external switch handler
	 */
	init_dio();
	TMR6_CallbackRegister(timer_ms_tick, 0);
	TMR6_Start();

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

	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, m35_1.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, m35_2.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, m35_2.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, m35_4.duty);
	MCPWM_Start();

	PWM_motor2(M_STOP);

	sine_table(sine_const);
	/*
	 * start background ADC conversion scans
	 */
	init_end_of_adc_scan();
	StartTimer(TMR_BLINK, 1000);

	while (true) {
		/* Maintain state machines of all polled MPLAB Harmony modules. */
		SYS_Tasks();

		if (m35_ptr->update++ > 20480) {
			m35_ptr->update = 0;
			m35_2.update++;

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

			if (m35_2.update > update_speed) {
				/* format and send data to LCD screen */
				sprintf(buffer, "c %7i:%i      ", m35_ptr->pos, m35_ptr->vel);
				eaDogM_WriteStringAtPos(1, 0, buffer);
				m35_ptr = &m35_2;
				sprintf(buffer, "c %7i:%i      ", m35_ptr->pos, m35_ptr->vel);
				eaDogM_WriteStringAtPos(2, 0, buffer);
				m35_ptr = &m35_1;
			}


			m35_2.error = (m35_1.pos * m35_1.gain) - m35_2.pos;

			m35_1.duty = pwm_mid_duty - (m35_2.error * m35_2.gain);
			if (m35_1.duty > pwm_high_duty) {
				m35_1.duty = pwm_high_duty;
			}
			if (m35_1.duty < pwm_low_duty) {
				m35_1.duty = pwm_low_duty;
			}

			if (!m35_4.speed--) {
				phase_duty(&m35_2, motor_volts);
				phase_duty(&m35_3, motor_volts);
				phase_duty(&m35_4, motor_volts);
				m35_4.speed = motor_speed;
			}

			if (abs(m35_2.error) < motor_error_stop) {
				PWM_motor2(M_STOP);
			} else {
				//				if (abs(m35_2.error) < motor_error_knee)
				//					m35_2.duty = m35_2.duty + (m35_2.vel * 4);
				//				if (abs(m35_2.error) < motor_error_coast)
				//					m35_2.duty = m35_2.duty + (m35_2.vel * 2);

				PWM_motor2(M_PWM);
			}

			if (m35_2.update > update_speed) {
				/*
				 * show some test results on the LCD screen
				 */
				//sprintf(buffer, " %i %i  %i %i    ", m35_2.error, m35_2.duty, u1ai, u1bi);
				sprintf(buffer, "%3i %3i:%3i %3i         ", u1ai, u1bi, u2ai, u2bi);
				eaDogM_WriteStringAtPos(0, 0, buffer);
			}

			/*
			 * test switch interface with motor control
			 */
			if (get_switch(S1)) {
				//PWM_motor2(M_CW);
			}


			if (get_switch(S0)) {
				//PWM_motor2(M_CCW);
			}

			/*
			 * set channel duty cycle for comp H/L outputs
			 */
			MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, m35_4.duty);
			MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, m35_2.duty);
			MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, m35_3.duty);
			MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, m35_4.duty);

			if (m35_2.update > update_speed) {
				m35_2.update = 0;
				uart_tests();
			}

			if (TimerDone(TMR_BLINK)) {
				StartTimer(TMR_BLINK, 1000);
				RESET_LED_Toggle();
			}
		} else {
			//run_tests(100000); // port diagnostics
		}
	}

	/* Execution should not come here during normal operation */

	return( EXIT_FAILURE);
}

void sine_table(double *s_table)
{
	int I;

	for (I = 1; I < 3600; I++) {
		s_table[I] = sin((double) I * 3.1415926535 * 2.0 / 3600.0);
	}

}

int32_t phase_duty(QEI_DATA *phase, float mag)
{
	phase->duty = hpwm_mid_duty - (m35_2.error * m35_4.gain);

	phase->duty = (int32_t) (18000.0 + (mag * sine_const[phase->sine_steps]));

	if (++phase->sine_steps >= 3600) {
		phase->sine_steps = 0;
	}

	if (phase->duty > hpwm_high_duty) {
		phase->duty = hpwm_high_duty;
	}
	if (phase->duty < hpwm_low_duty) {
		phase->duty = hpwm_low_duty;
	}
	return phase->duty;
}
/*******************************************************************************
 End of File
 */

