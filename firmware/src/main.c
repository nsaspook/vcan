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
	.duty = hpwm_mid_duty, // fast motor duty
	.gain = pos_gain, // input position gain
},
m35_2 = {
	.duty = 1200, // slow motor duty
	.gain = error_gain, // motor position gain
	.sine_steps = sinea,
},
m35_3 = {
	.duty = 1200,
	.sine_steps = sineb,
},
m35_4 = {
	.duty = 0,
	.gain = herror_gain, // PWM sine-wave gain
	.sine_steps = sinec,
	.speed = motor_speed,
	.current = motor_volts,
},

*m35_ptr;
volatile int32_t u1ai = 0, u1bi = 0, u2ai = 0, u2bi = 0, an_data[NUM_AN];
volatile uint16_t tickCount[TMR_COUNT];

double sine_const[3600];

void sine_table(double *);
int32_t phase_duty(QEI_DATA *, double);

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
		IOCON2bits.OVRDAT = 0;
		IOCON2bits.OVRENH = 1;
		IOCON2bits.OVRENL = 1;
		IOCON1bits.OVRDAT = 0;
		IOCON1bits.OVRENH = 1;
		IOCON1bits.OVRENL = 1;
		IOCON4bits.OVRDAT = 0;
		IOCON4bits.OVRENH = 1;
		IOCON4bits.OVRENL = 1;
		IOCON3bits.OVRDAT = 0;
		IOCON3bits.OVRENH = 1;
		IOCON3bits.OVRENL = 1;
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

	sine_table(sine_const);
	/*
	 * start background ADC conversion scans
	 */
	init_end_of_adc_scan();
	StartTimer(TMR_BLINK, 1000);
	StartTimer(TMR_MOTOR, 1);
	StartTimer(TMR_DISPLAY, 500);

	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, m35_1.duty);
	/*
	 * move to locked rotor position
	 */
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, m35_2.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, m35_3.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, m35_4.duty);
	MCPWM_Start();

	WaitMs(2000);
	/*
	 * zero position counters at locked rotor position
	 */
	POS1CNT = 0;
	POS2CNT = 0;
	POS3CNT = 0;
	/*
	 * setup sine-wave control for zero position
	 */
	phase_duty(&m35_2, m35_4.current);
	phase_duty(&m35_3, m35_4.current);
	phase_duty(&m35_4, m35_4.current);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, m35_2.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, m35_3.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, m35_4.duty);
	WaitMs(1000);


	//	PWM_motor2(M_STOP);

	while (true) {
		/* Maintain state machines of all polled MPLAB Harmony modules. */
		SYS_Tasks();

		if (TimerDone(TMR_MOTOR)) {
			StartTimer(TMR_MOTOR, 2);
			DEBUGB0_Set();

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

			if (TimerDone(TMR_DISPLAY)) {
				/* format and send data to LCD screen */
				sprintf(buffer, "c %7i:%i      ", m35_ptr->pos, m35_2.error);
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

			/*
			 * generate a positioning error drive signal
			 */
			m35_4.current = abs(m35_2.error)*1;

			/*
			 * limit motor drive
			 */
			if (m35_4.current > (m35_4.current_prev + 1)) {
				m35_4.current = m35_4.current_prev + 1;
			}

			if (m35_4.current > motor_volts) {
				m35_4.current = motor_volts;
			}

			m35_4.current_prev = m35_4.current;

			if (abs(m35_2.error) < motor_error_stop) {
				m35_4.current = 0;
				//PWM_motor2(M_STOP);
			} else {
				if (abs(m35_2.error) > motor_error_stop * 2) {
					if (!m35_4.speed--) {
						phase_duty(&m35_2, m35_4.current);
						phase_duty(&m35_3, m35_4.current);
						phase_duty(&m35_4, m35_4.current);
						m35_4.speed = motor_speed;
					}
				}
				if (m35_2.error > 0) {
					/*
					 * set channel duty cycle for motor outputs
					 */
					MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, m35_4.duty);
					MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, m35_2.duty);
					MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, m35_3.duty);
					MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, m35_4.duty);
				} else {
					/*
					 * set channel duty cycle for motor outputs
					 */
					MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, m35_4.duty);
					MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, m35_2.duty);
					MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, m35_4.duty);
					MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, m35_3.duty);
				}
				PWM_motor2(M_PWM);
			}

			if (TimerDone(TMR_DISPLAY)) {
				/*
				 * show some test results on the LCD screen
				 */
				//sprintf(buffer, " %i %i  %i %i    ", m35_2.error, m35_2.duty, u1ai, u1bi);
				sprintf(buffer, "%3i %3i:%3i %3i         ", u1ai, u1bi, u2ai, u2bi);
				eaDogM_WriteStringAtPos(0, 0, buffer);
				StartTimer(TMR_DISPLAY, 500);
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

			if (TimerDone(TMR_BLINK)) {
				StartTimer(TMR_BLINK, 1000);
				RESET_LED_Toggle();
			}
			DEBUGB0_Clear();
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

	for (I = 1; I < sine_res; I++) {
		s_table[I] = sin((double) I * 3.1415926535 * 2.0 / (double) sine_res);
	}

}

int32_t phase_duty(QEI_DATA *phase, double mag)
{
	phase->duty = (int32_t) (hpwm_mid_duty_f + (mag * sine_const[phase->sine_steps]));

	if (++phase->sine_steps >= sine_res) {
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

