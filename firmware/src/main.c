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

/*
 * 26-bit Electrical angles and mechanical angles
 * 
 * Velocity Calculation from each rising edge of one phase of the Quadrature Encoder
 * 3-phase sinusoidal commutation 
 * 
 * Sinusoidal Commutation of a Brushless Motor
To fully optimize the conversion of current into shaft torque, the amplifier needs to vary
the applied current I based on a precise measurement of ?. The torque equation for the
three phases becomes
TA = IA * Kt * sin ?
TB = IB * Kt * sin (?+120) (10)
TC = IC * Kt * sin (? + 240)
A feedback device such as a quadrature encoder can determine ? in terms of counts;
a common resolution is 360? (1 revolution) = 4000 counts. The amplifier varies the
current in each phase I based on the motor command signal M with respect to ?:
IA = M * sin ?
IB = M * sin (?+120) (11)
IC = M * sin (? + 240)
 * http://www.galilmc.com/download/application-note/note3414.pdf
 * https://www.motioncontroltips.com/what-is-sinusoidal-commutation-for-dc-motors/
 * https://www.switchcraft.org/learning/2017/3/15/space-vector-pwm-intro
 */


#include <proc/p32mk1024mcf100.h>

#include "vcan.h"
#include "dio.h"
#include "adc_scan.h"
#include "timers.h"
#include "pid.h"

struct QEI_DATA m35_1 = {
	.duty = 0, // fast motor duty
	.gain = pos_gain, // input position gain
},
m35_2 = {
	.duty = 1200, // slow motor duty
	.gain = error_gain, // motor position gain
	.sine_steps = sinea,
	.pole_pairs = 5,
	.ppr = 327680,
	.phaseIncrement = PHASE_INC,
	.phase_steps = 0,
	.phaseAccumulator = 0,
},
m35_3 = {
	.duty = 1200,
	.sine_steps = sineb,
	.phaseIncrement = PHASE_INC,
	.phase_steps = 0,
	.phaseAccumulator = 0,
},
m35_4 = {
	.duty = 0,
	.gain = herror_gain, // PWM sine-wave gain
	.sine_steps = sinec,
	.speed = motor_speed,
	.current = 100,
	.phaseIncrement = PHASE_INC,
	.phase_steps = 0,
	.phaseAccumulator = 0,
},

*m35_ptr;

struct SPid current_pi = {
	.iMax = 100.0,
	.iMin = -100.0,
	.pGain = 2.0,
	.iGain = 0.005,
};

V_STATE vcan_state = V_init;
volatile int32_t u1ai = 0, u1bi = 0, u2ai = 0, u2bi = 0, an_data[NUM_AN];
volatile uint16_t tickCount[TMR_COUNT];

double sine_const[sine_res + 1];

const uint8_t step_code[] = {// A,B,C bits in order
	0b101,
	0b100,
	0b110,
	0b010,
	0b011,
	0b001,
	0b101,
	0b100,
};

void sine_table(double *);
int32_t phase_duty(struct QEI_DATA *, double);
void fillTable(void);
void preset_phase(void);
double sin_foo(struct QEI_DATA *);

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

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main(void)
{
	char buffer[40];
	uint8_t i;
	double pi_current_error;

	//	struct tm Time = {0};

	/* Initialize all modules */
	SYS_Initialize(NULL);
	LATGbits.LATG12 = 1;
	LATGbits.LATG13 = 1;
	LATGbits.LATG14 = 1;
	_CP0_SET_COUNT(0); // Set Core Timer count to 0

	/*
	 * start the external switch handler
	 */
	init_dio();
	/*
	 * software timers
	 */
	TMR6_CallbackRegister(timer_ms_tick, 0);
	TMR6_Start();

	QEI1_Start();
	QEI2_Start();
	QEI3_Start();
	m35_ptr = &m35_1;

	//	RTCC_CallbackRegister(reset_led_blink, 1);
	//	RTCC_TimeGet(&Time);
	//	RTCC_AlarmSet(&Time, RTCC_ALARM_MASK_SS);
	//	RTCC_InterruptEnable(RTCC_ALARM_MASK_SS);

	init_display();
	eaDogM_CursorOff();

	sprintf(buffer, " VCAN Testing ");
	eaDogM_WriteStringAtPos(0, 0, buffer);
	WaitMs(500);

	sine_table(sine_const);
	/*
	 * sin_foo routines
	 */
	fillTable();
	preset_phase();
	/*
	 * start background ADC conversion scans
	 */
	init_end_of_adc_scan();
	StartTimer(TMR_BLINK, 1000);
	StartTimer(TMR_MOTOR, 1);
	StartTimer(TMR_DISPLAY, 500);
	StartTimer(TMR_VEL, 1000);

	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, m35_1.duty);
	/*
	 * Bang-Bang initialization
	 * 
	 * move to locked rotor position
	 * block-commutated 
	 */
	for (i = 0; i < 8; i++) {
		MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, ((step_code[i] >> 2)&0x1) * duty_max);
		MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, ((step_code[i] >> 1)&0x1) * duty_max);
		MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, ((step_code[i] >> 0)&0x1) * duty_max);
		switch (i) {
		case 0:
			MCPWM_Start();
			WaitMs(900);
			break;
		case 7:
			WaitMs(900);
			sprintf(buffer, "HP %6i:%6i      ", POS2CNT, m35_2.ppr / m35_2.pole_pairs);
			eaDogM_WriteStringAtPos(2, 0, buffer);
			m35_2.ppp = POS2CNT;
			POS2CNT = 0; // reset zero for new home
			break;
		case 1:
			WaitMs(1400);
			/*
			 * zero position counters at locked rotor position
			 */
			POS1CNT = 0;
			POS2CNT = 0;
			POS3CNT = 0;
		default:
			sprintf(buffer, "HP %7i      ", POS2CNT);
			eaDogM_WriteStringAtPos(1, 0, buffer);
			break;
		}
		WaitMs(100);
	}
	WaitMs(2000);

	/*
	 * setup sine-wave control for zero position
	 * using block-commutated 
	 */
//	phase_duty(&m35_2, m35_4.current);
//	phase_duty(&m35_3, m35_4.current);
//	phase_duty(&m35_4, m35_4.current);
//	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, m35_2.duty);
//	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, m35_3.duty);
//	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, m35_4.duty);
	WaitMs(1000);

	vcan_state = V_home;

	while (true) {
		/* Maintain state machines of all polled MPLAB Harmony modules. */
		SYS_Tasks();

		/*
		 * update slow velocity every second by reading velocity counters
		 */
		if (TimerDone(TMR_VEL)) {
			StartTimer(TMR_VEL, 1000);
			m35_1.vel = VEL1CNT;
			m35_2.vel = VEL2CNT;
			m35_3.vel = VEL3CNT;
		}

		if (TimerDone(TMR_MOTOR)) {
			StartTimer(TMR_MOTOR, 1);
			DEBUGB0_Set();

			/* update local values of the encoder status counters */
			m35_1.pos = POS1CNT;
			m35_1.vel = VEL1HLD;
			m35_1.indexcnt = INT1HLD;
			m35_2.pos = POS2CNT;
			m35_2.vel = VEL2HLD;
			m35_2.indexcnt = INT2HLD;
			m35_3.pos = POS3CNT;
			m35_3.vel = VEL3HLD;
			m35_3.indexcnt = INT3HLD;

			/*
			 * direction compare from previous position
			 */
			m35_2.cw = QEI2STATbits.PCHEQIRQ;
			m35_2.ccw = QEI2STATbits.PCLEQIRQ;
			if ((m35_2.cw | m35_2.ccw) == 0) {
				m35_2.stopped = true;
			} else {
				m35_2.stopped = false;
			}
			/*
			 * update compare positions for next motor position sample
			 */
			QEI2ICC = m35_2.pos;
			QEI2CMPL = m35_2.pos;

			m35_2.error = (m35_1.pos * m35_1.gain) - m35_2.pos;

			pi_current_error = UpdatePI(&current_pi, (double) m35_2.error);

			//			m35_2.error = (int32_t) pi_pos_error;

			/*
			 * generate a positioning error drive signal
			 */
			//			m35_4.current = abs(m35_2.error);
			m35_4.current = abs((int32_t) pi_current_error);

			/*
			 * limit motor drive
			 */
			if (m35_4.current > motor_volts) {
				m35_4.current = motor_volts;
			}
			if (m35_4.current > (m35_4.current_prev + 1)) {
				m35_4.current = m35_4.current_prev + 1;
			}

			if (m35_4.current > motor_volts) {
				m35_4.current = motor_volts;
			}

			m35_4.current_prev = m35_4.current;

			if (abs(m35_2.error) < motor_error_stop) {
				m35_4.current = 50;
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
					MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, m35_2.duty);
					MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, m35_3.duty);
					MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, m35_4.duty);
				} else {
					/*
					 * set channel duty cycle for motor outputs
					 */
					MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, m35_2.duty);
					MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, m35_4.duty);
					MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, m35_3.duty);
				}
				PWM_motor2(M_PWM);
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

			DEBUGB0_Clear();
		} else {
			/* flash the board led(s) using the position counter bits */
#ifdef QEI_SLOW
			LATGbits.LATG12 = m35_1.pos >> 3;
			LATGbits.LATG13 = m35_1.pos >> 5;
			LATGbits.LATG14 = m35_2.pos & 1;
#else
			LATGbits.LATG12 = m35_ptr->pos >> 10;
			LATGbits.LATG13 = m35_ptr->pos >> 12;
			LATGbits.LATG14 = m35_ptr->pos >> 14;
#endif
			if (TimerDone(TMR_BLINK)) {
				StartTimer(TMR_BLINK, 1000);
				RESET_LED_Toggle();
			}
			//run_tests(100000); // port diagnostics
			if (TimerDone(TMR_DISPLAY)) {
				/* format and send data to LCD screen */
				sprintf(buffer, "C %5i:%i      ", m35_ptr->pos, m35_2.error);
				eaDogM_WriteStringAtPos(1, 0, buffer);
				m35_ptr = &m35_2;
				sprintf(buffer, "C %5i:%i:%i      ", m35_ptr->pos, m35_ptr->vel, m35_2.indexcnt >> 10);
				eaDogM_WriteStringAtPos(2, 0, buffer);
				m35_ptr = &m35_1;
				/*
				 * show some test results on the LCD screen
				 */
				//sprintf(buffer, " %i %i  %i %i    ", m35_2.error, m35_2.duty, u1ai, u1bi);
				//				sprintf(buffer, "%3i %3i:%3i %3i         ", u1ai, u1bi, u2ai, u2bi);
				sprintf(buffer, "%.2f:%.2f:%.2f         ", asin(m35_2.sin)*180.0 / PI*2, asin(m35_3.sin)*180.0 / PI*2, asin(m35_4.sin)*180.0 / PI*2);
				eaDogM_WriteStringAtPos(0, 0, buffer);
				StartTimer(TMR_DISPLAY, 250);
			}
		}
	}

	/* Execution should not come here during normal operation */

	return( EXIT_FAILURE);
}

void sine_table(double *s_table)
{
	int I;

	s_table[0] = 0.0;
	for (I = 1; I <= sine_res; I++) {
		s_table[I] = sin(((double) I * 3.1415926535 * 2.0) / (double) sine_res);
	}

}

/*
 * micro-stepping  sinusoidal commutation for PWM
 */
int32_t phase_duty(struct QEI_DATA *phase, double mag)
{
	//	phase->duty = (int32_t) (hpwm_mid_duty_f + (mag * sine_const[phase->sine_steps]));

	phase->duty = (int32_t) (hpwm_mid_duty_f + (mag * sin_foo(phase)));

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

/*
 * https://namoseley.wordpress.com/2015/07/26/sincos-generation-using-table-lookup-and-iterpolation/
 */

/*Get integer types with well-defined number of bits */

/* Define a table of 256 entries containing a single cycle waveform.
   The table entries are not shown.
 */
float table[256];

/* Fill the table with a single sin(x) cycle */
void fillTable(void)
{
	uint32_t i;
	for (i = 0; i < 256; i++)
		table[i] = sin(2.0 * 3.1415927 * (float) i / 256.0);
}

/*
 * add 120 and 240 degree offsets to phase B and C
 */
void preset_phase(void)
{
	uint32_t i;

	for (i = 0; i < SR120; i++)
		sin_foo(&m35_3);
	for (i = 0; i < SR240; i++)
		sin_foo(&m35_4);
}

/*
 * generate one complete sine-wave cycle at one step per call
 */
double sin_foo(struct QEI_DATA *phase)
{

	//	uint32_t sampleRate = 1000; // sample rate of 1000 samples-per-second
	//	uint32_t desiredFreq = 199; // desired generated frequency
	//	static uint32_t phaseAccumulator = 0; // fixed-point (16.16) phase accumulator
	/* fixed-point (16.16) phase increment */
	//	static uint32_t phaseIncrement = (256 * 65536 / 120000);

	/* Increment the phase accumulator */
	phase->phaseAccumulator += phase->phaseIncrement;
	/* Limit the phase accumulator to 24 bits.
	   The lower 16 bits are the fractional table
	   index part, while the remaining 8 bits
	   are the integer index into the waveform
	   table.
	 */
	phase->phaseAccumulator &= (256 * 65536) - 1;

	/* Calculate the table index. */
	uint32_t index = phase->phaseAccumulator >> 16;

	/* Get the table entry and the one
	   directly following it.
	 */
	double v_sin = table[index];
	double v_cos = table[(index + 64) & 255];
	double frac = 2.0f * 3.1415926535f * (double) (phase->phaseAccumulator & 65535) / 65536.0f / 256.0f;

	// fractional sin/cos
	double f_sin = frac;
	double f_cos = 1.0f - 0.5f * frac*frac;

	double result = v_sin * f_cos + v_cos*f_sin;

	if (++phase->phase_steps > SAMPLERATE) {
		phase->phase_steps = 0;
		phase->phaseAccumulator = 0;
	}
	phase->sin = result;
	return result;
}
