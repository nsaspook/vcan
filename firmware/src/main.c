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
 * Control of permanent magnet AC servo motors via fuzzy reasoning
 */

/*
 * PIC32MK hardware
 * timer 1	SOSC	1 second clock
 * timer 2	motor pwm waveform 1.0ms PRI 7, sub 2
 * timer 3	QEI slip speed updater 1 second
 * timer 6	software timer updates 0.5ms
 */

#include "m35qei.h" 
#include "vcan.h"
#include "dio.h"
#include "adc_scan.h"
#include "timers.h"
#include "pid.h"
#include "freqgen.h"
#include "eadog.h" 
#include "dogm-graphic.h"
#include "OledDriver.h"
#include "OledChar.h"
#include "OledGrph.h"
#include "dio.h"

const char *build_date = __DATE__, *build_time = __TIME__;

volatile struct QEI_DATA m35_1 = {
	.duty = 0, // default motor duty
},
m35_2 = {
	.duty = 0, // default motor duty
	.gain = error_gain, // motor position encoder gain
	.sine_steps = sinea,
	.pole_pairs = NUM_POLE_PAIRS,
	.ppr = ENCODER_PULSES_PER_REV,
	.phaseIncrement = PHASE_INC,
	.phase_steps = 0,
	.phaseAccumulator = 0,
	.set = false,
},
m35_3 = {
	.duty = 0,
	.gain = pos_gain, // input position encoder gain
	.sine_steps = sineb,
	.phaseIncrement = PHASE_INC,
	.phase_steps = 0,
	.phaseAccumulator = 0,
},
m35_4 = {
	.duty = 0,
	.gain = herror_gain, // PWM sine-wave gain
	.sine_steps = sinec,
	.speed = MOTOR_SPEED,
	.current = 100,
	.phaseIncrement = PHASE_INC,
	.phase_steps = 0,
	.phaseAccumulator = 0,
},

*m35_ptr;

volatile struct SPid freq_pi = {
	.iMax = 2000.0,
	.iMin = 0.0,
	.pGain = .9, // 0.5
	.iGain = 0.05, // 0.125
};

volatile struct SPid current_pi = {
	.iMax = 300.0,
	.iMin = -300.0,
	.pGain = 0.1, // 0.2
	.iGain = 0.1, // 0.8
};

volatile struct SPid velocity_pi = {
	.iMax = 50.0,
	.iMin = -50.0,
	.pGain = 3.25, // 0.5
	.iGain = 0.95, // 0.5 slip_drive
};

volatile int32_t u1ai = 0, u1bi = 0, u2ai = 0, u2bi = 0, u_total = 0, current_error, an_data[NUM_AN];
volatile uint16_t tickCount[TMR_COUNT];

time_t rawtime;
volatile time_t t1_time;
struct tm * timeinfo;

volatile struct V_type V = {
	.StartTime = 1,
	.TimeUsed = 1,
	.pacing = 1,
	.pwm_update = true,
	.pwm_stop = true,
	.vcan_state = V_init,
	.m_speed = M_SLEW,
	.motor_speed = MOTOR_SPEED,
};
double mHz = 0.0, mHz_real = 0.0, sr_slip = 0.0, mHz_raw = 0.0, mHz_real_raw = 0.0;
double pi_current_error = 0.0, pi_velocity_error = 0.0, pi_freq_error = 0.0;

const uint8_t step_code[] = {// A,B,C bits in order
	0b101,
	0b100,
	0b110,
	0b010,
	0b011,
	0b001,
	0b101,
};

time_t time(time_t *);
void my_time(uint32_t, uintptr_t);
void my_index(GPIO_PIN, uintptr_t);
void move_pos_qei(uint32_t, uintptr_t);
void set_motor_speed(const uint32_t, double);
int32_t velo_loop(double, bool);
void wave_gen(uint32_t, uintptr_t);
void motor_graph(void);
void line_rot(uint32_t, uint32_t, uint32_t, uint32_t);

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
	case M_CAL:
		IOCON2bits.OVRDAT = 0;
		IOCON2bits.OVRENH = 1;
		IOCON2bits.OVRENL = 1;
		IOCON1bits.OVRDAT = 0;
		IOCON1bits.OVRENH = 1;
		IOCON1bits.OVRENL = 1;
		IOCON4bits.OVRDAT = 0; // connect to motor power
		IOCON4bits.OVRENH = 1;
		IOCON4bits.OVRENL = 1;
		IOCON3bits.OVRDAT = 2;
		IOCON3bits.OVRENH = 1;
		IOCON3bits.OVRENL = 1;
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

void line_rot(uint32_t x1, uint32_t y1, uint32_t x2, uint32_t y2)
{
	OledMoveTo((int32_t) x1, (int32_t) y1);
	OledLineTo((int32_t) x2, (int32_t) y2);
}

time_t time(time_t * Time)
{
	return t1_time;
}

/*
 * PWM 1ms waveform interrupt routine, timer #2
 */
void wave_gen(uint32_t status, uintptr_t context)
{
	DEBUGB0_Set();
	if (V.pwm_stop && V.pwm_update)
		return;

	V.pwm_update = true;
	if ((--m35_2.set) || (--m35_4.speed <= 0)) { // generate drive waveforms at m35_4.speed or bypass using m35_2.set
		V.TimeUsed = (uint32_t) _CP0_GET_COUNT() - V.StartTime;
		V.StartTime = (uint32_t) _CP0_GET_COUNT();
		m35_1.vel = VEL1CNT;
		m35_2.vel = VEL2CNT;
		m35_3.vel = VEL3CNT;
		/*
		 * load sinewave constants from three-phase 3600 values per cycle lookup tables
		 */
		phase_duty(&m35_2, m35_4.current, V.m_speed, V.pacing);
		phase_duty(&m35_3, m35_4.current, V.m_speed, V.pacing);
		phase_duty(&m35_4, m35_4.current, V.m_speed, V.pacing);
		set_motor_speed(abs(m35_2.error), pi_freq_error);
		m35_4.speed = V.motor_speed;
	}

	current_error = hb_current(u_total, false) - MPCURRENT;
	pi_current_error = lp_filter_f(UpdatePI(&current_pi, current_error), 5);
	/*
	 * generate a current error drive signal
	 */
	m35_4.current = MPCURRENT + (MPCURRENT - (int32_t) pi_current_error);
	/*
	 * limit motor drive current
	 */
	if (m35_4.current > motor_volts) {
		m35_4.current = motor_volts;
	}
	m35_4.current_prev = m35_4.current;
	/*
	 * position error from motor encoder vs position setting encoder
	 */
	m35_2.error = (POS3CNT * m35_3.gain) - POS2CNT;
	/*
	 * generated a motor drive frequency from the position error signal
	 */
	pi_freq_error = fabs(UpdatePI(&freq_pi, (double) m35_2.error));
	/*
	 * limit frequency error signal
	 */
	if (pi_freq_error > 1999.0) {
		pi_freq_error = 1999.0;
	}
	/*
	 * check for position error dead-band
	 */
	if (abs(m35_2.error) < motor_error_stop) {
		ResetPI(&freq_pi);
		m35_2.set = 3;
	} else {
		m35_2.set = false;
	}
	/*
	 * motor stop/start pacing
	 */
	V.pacing = velo_loop(pi_velocity_error, m35_2.set);
	/*
	 * position housekeeping
	 */
	if (m35_2.error > 0) {
		if (m35_2.ccw) {
			m35_2.ccw = false;
		}
		m35_2.cw = true;
	} else {
		if (m35_2.cw) {
			m35_2.cw = false;
		}
		m35_2.ccw = true;
	}
	if (m35_2.error == 0) {
		m35_2.cw = false;
		m35_2.ccw = false;
	}
	/*
	 * set channel duty cycle for motor sinewave outputs at ISR time 1ms intervals
	 */
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, m35_2.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, m35_2.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, m35_3.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, m35_4.duty);
	DEBUGB0_Clear();
}

/*
 * SOSC timer #1
 */
void my_time(uint32_t status, uintptr_t context)
{
	t1_time++;
}

void my_index(GPIO_PIN pin, uintptr_t context)
{
	POS2CNT = 0;
}

/*
 * input position auto-positioning, timer #3
 */
void move_pos_qei(uint32_t status, uintptr_t context)
{

#ifdef SLIP_DRIVE
	POS3CNT = POS2CNT + MOTOR_SLIP; // movement offset
#endif
	return;
}

int32_t velo_loop(double error, bool stop)
{
	int32_t pace = 0;

	if (stop) {
		return pace;
	}

	if (m35_2.error > 0) {
		pace = 1;
	} else {
		pace = -1;
	}
	return pace;
}

void set_motor_speed(const uint32_t error_sig, double pi_error)
{
	V.motor_speed = MOTOR_SPEED;

	if (error_sig >= (ENCODER_PULSES_PER_REV / 800))
		V.motor_speed = MOTOR_SPEED;

	if (error_sig > (ENCODER_PULSES_PER_REV / 4)) {
		V.motor_speed = MOTOR_SPEED;
		if (TimerDone(TMR_BLINK)) {
			StartTimer(TMR_BLINK, 250);
			RESET_LED_Toggle();
		}
	}

#if (ENCODER_PULSES_PER_REV < 9000)
	freq_pi.pGain = 1.0;
	freq_pi.iGain = 3.125;
	if (error_sig <= (ENCODER_PULSES_PER_REV / 800))
		V.motor_speed = MOTOR_SPEED;
	if (error_sig < (ENCODER_PULSES_PER_REV / 900))
		V.motor_speed = 10;
	if (error_sig < (ENCODER_PULSES_PER_REV / 1000))
		V.motor_speed = 50;
	if (error_sig < (ENCODER_PULSES_PER_REV / 1200))
		V.motor_speed = 200;
	if (error_sig < (ENCODER_PULSES_PER_REV / 1500))
		V.motor_speed = 1000;
	if (error_sig < (ENCODER_PULSES_PER_REV / 2000))
		V.motor_speed = 10000;
	if (error_sig < (ENCODER_PULSES_PER_REV / 800))
		V.motor_speed = 2000 - (uint32_t) pi_error;
#else
	freq_pi.pGain = 3.0;
	freq_pi.iGain = 2.0;
	if (error_sig > (ENCODER_PULSES_PER_REV / 800))
		V.motor_speed = MOTOR_SPEED;
	if (error_sig < (ENCODER_PULSES_PER_REV / 900))
		V.motor_speed = 10;
	if (error_sig < (ENCODER_PULSES_PER_REV / 1000))
		V.motor_speed = 50;
	if (error_sig < (ENCODER_PULSES_PER_REV / 1200))
		V.motor_speed = 200;
	if (error_sig < (ENCODER_PULSES_PER_REV / 1500))
		V.motor_speed = 1000;
	if (error_sig < 40)
		V.motor_speed = 10000;
	if (error_sig <= (ENCODER_PULSES_PER_REV / 800))
		V.motor_speed = 2000 - (uint32_t) pi_error;
#endif
	m35_4.speed = V.motor_speed;
}

void motor_graph(void)
{
	static uint32_t irow = 0;
	static int32_t x2 = 205, x1 = 220, y1 = 100, xn1, yn1, xn2, yn2, r;
	static double theta1 = sinea, theta2 = sineb, theta3 = sinec;
	static double ra, si, co;

	//Starting point
	xn1 = x1;
	yn1 = y1;

	//Convert Degree into radian
	r = x2 - x1;
	ra = 0.0175 * theta1;
	si = sin(ra);
	co = cos(ra);
	//second point
	xn2 = x1 + r * co + 1;
	yn2 = y1 + r * si + 1;

	line_rot(xn1, yn1, xn2, yn2);
	ra = 0.0175 * theta2;
	si = sin(ra);
	co = cos(ra);
	//second point
	xn2 = x1 + r * co + 1;
	yn2 = y1 + r * si + 1;

	line_rot(xn1, yn1, xn2, yn2);
	ra = 0.0175 * theta3;
	si = sin(ra);
	co = cos(ra);
	//second point
	xn2 = x1 + r * co + 1;
	yn2 = y1 + r * si + 1;

	line_rot(xn1, yn1, xn2, yn2);

	irow++;
	theta1 = theta1 + 1.0; // rotate
	if (theta1 > sine_res) {
		theta1 = 0.0;
	}
	theta2 = theta2 + 1.0; // rotate
	if (theta2 > sine_res) {
		theta2 = 0.0;
	}
	theta3 = theta3 + 1.0; // rotate
	if (theta3 > sine_res) {
		theta3 = 0.0;
	}
}

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main(void)
{
	char buffer[STR_BUF_SIZE];
	uint8_t i;

	/* Initialize all modules */
	SYS_Initialize(NULL);

#ifdef EDOGM
	//	SPI3_Initialize_edogm();
#endif
#ifdef EDOGS
	//	SPI3_Initialize_edogs();
#endif

	LATGbits.LATG12 = 1;
	LATGbits.LATG13 = 1;
	LATGbits.LATG14 = 1;
	_CP0_SET_COUNT(0); // Set Core Timer count to 0

	/*
	 * start the external switch handler
	 */
	init_dio();
	/*
	 * software timers @1ms using 500ns ticks
	 */
	TMR6_CallbackRegister(timer_ms_tick, 0);
	TMR6_Start();
	TMR3_Stop();
	TMR3_CallbackRegister(move_pos_qei, 0);
	TMR1_CallbackRegister(my_time, 0);
	TMR1_Start();
	StartTimer(TMR_BLINK, 1000);
	StartTimer(TMR_LCD_UP, 10);

	QEI1_Start();
	//	QEI2_CallbackRegister(my_index, 0);
	GPIO_PinInterruptCallbackRegister(GPIO_PIN_RB1, my_index, 0);
	GPIO_PortInterruptEnable(GPIO_PORT_B, 0b10);
	QEI2_Start();
	QEI3_Start();
	m35_ptr = &m35_3;
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, duty_max);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, duty_max);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, duty_max);

	time(&rawtime);
	timeinfo = localtime(&rawtime);

#ifdef EDOGM
	init_display();
	eaDogM_CursorOff();
#endif
#ifdef EDOGS
	SPI_EN1_Set();
	wdtdelay(IS_DELAYPOWERUP); // > 400ms power up delay
	lcd_init();
	OledInit();
	OledSetCharUpdate(0); // manual LCD screen updates for speed
#endif
	if (OSCCONbits.CF) { // check for sysclock proper operation
		sprintf(buffer, "VCAN Clock Error       ");
		eaDogM_WriteStringAtPos(0, 0, buffer);
		sprintf(buffer, "Clock Status %04x      ", CLKSTAT);
		eaDogM_WriteStringAtPos(1, 0, buffer);
		OledUpdate();
		WaitMs(5000);
	} else {
		sprintf(buffer, "VCAN %s %s       ", build_date, build_time);
		eaDogM_WriteStringAtPos(0, 0, buffer);
		sprintf(buffer, "Clock Status %04x      ", CLKSTAT);
		eaDogM_WriteStringAtPos(1, 0, buffer);
		OledUpdate();
		WaitMs(500);
	}


	/*
	 * sine slew speed routines
	 */
	sine_table();
	/*
	 * sine_foo slow speed routines
	 */
	fillTable();
	preset_phase();
	/*
	 * start background ADC conversion scans
	 */
	init_end_of_adc_scan();
	StartTimer(TMR_MOTOR, 1);
	StartTimer(TMR_DISPLAY, 500);
	StartTimer(TMR_VEL, 1000);

	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, m35_1.duty);
	/*
	 * enable motor channels
	 */
	U1_EN_Set();
	U2_EN_Set();

	/*
	 * Bang-Bang initialization
	 *
	 * move to locked rotor position
	 * block-commutated
	 */
	for (i = 0; i < 7; i++) {
		MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, ((step_code[i & 0x7] >> 2)&0x1) * MBLOCK);
		MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, ((step_code[i & 0x7] >> 2)&0x1) * MBLOCK);
		MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, ((step_code[i & 0x7] >> 1)&0x1) * MBLOCK);
		MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, ((step_code[i & 0x7] >> 0)&0x1) * MBLOCK);
		switch (i) {
		case 0:
			MCPWM_Start();
			WaitMs(200);
			/*
			 * zero position counters at locked rotor position
			 */
			POS1CNT = 0;
			POS2CNT = 0;
			POS3CNT = 0;
			break;
		case 6:
			WaitMs(900);
			sprintf(buffer, "HP %6i:%6i      ", POS2CNT, m35_2.ppr / m35_2.pole_pairs);
			eaDogM_WriteStringAtPos(3, 0, buffer);
			m35_2.ppp = POS2CNT;
			//			POS2CNT = 0; // reset zero for new home
			break;
		case 1:
		default:
			sprintf(buffer, "HP %7i      ", POS2CNT);
			eaDogM_WriteStringAtPos(2, 0, buffer);
			break;
		}
		OledUpdate();
		WaitMs(10);
	}
	WaitMs(2000);

	V.vcan_state = V_home;
	TMR3_Start(); // start auto movement functions
	PWM_motor2(M_PWM);
	V.StartTime = (uint32_t) _CP0_GET_COUNT();
	/*
	 * start ISR for PWM waveform generator
	 */
	TMR2_Stop();
	TMR2_CallbackRegister(wave_gen, 0);
	TMR2_Start();

	//Module CTMU
	PMD1bits.CTMUMD = 0; //Enable CTMU Module
	CTMUCONbits.TGEN = 0; // TGEN = 0 for enable current through diode
	CTMUCONbits.EDG1STAT = 1; // EDGESTAT1 = EDGESTAT2  for enable current trough diode
	CTMUCONbits.EDG2STAT = 1; // EDGESTAT1 = EDGESTAT2  for enable current trough diode
	CTMUCONbits.IRNG = 0b11; //100xBase current level
	CTMUCONbits.ON = 1; // CTMU is ON

	// wait for first 3-phase calculation then stop, pwm_stop is true
	while (!V.pwm_update);
	// setup motor position values
	m35_4.current = MBLOCK;
	V.pacing = 1;
	phase_duty(&m35_2, m35_4.current, V.m_speed, V.pacing);
	phase_duty(&m35_3, m35_4.current, V.m_speed, V.pacing);
	phase_duty(&m35_4, m35_4.current, V.m_speed, V.pacing);

	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, m35_2.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, m35_2.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, m35_4.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, m35_3.duty);
	WaitMs(600);
	m35_2.sine_zero = POS2CNT;
	sprintf(buffer, "HP 3-PH %7i  %6i    ", POS2CNT, m35_2.sine_zero - m35_2.ppp);
	eaDogM_WriteStringAtPos(4, 0, buffer);
	OledUpdate();
	WaitMs(3000);
	V.pwm_stop = false; // let ISR generate waveforms

	while (true) {
		/* Maintain state machines of all polled MPLAB Harmony modules. */
		SYS_Tasks();

		if (TimerDone(TMR_MOTOR)) {
			StartTimer(TMR_MOTOR, MOTOR_UPDATES);

			m35_2.cw = false;
			m35_2.ccw = false;
			/* update local values of the encoder status counters */
			m35_1.pos = POS1CNT;
			m35_1.vel = VEL1HLD;
			m35_1.indexcnt = INDX1CNT;
			m35_2.pos = POS2CNT;
			m35_2.vel = VEL2HLD;
			m35_2.indexcnt = INDX2CNT;
#ifdef NOINDEX
			if (POS2CNT) {
				m35_2.indexcnt = abs(POS2CNT) / ENCODER_PULSES_PER_REV;
			}
#endif
			m35_3.pos = POS3CNT;
			m35_3.vel = VEL3HLD;
			m35_3.indexcnt = INDX3CNT;

			/*
			 * update compare positions for next motor position sample
			 */
			QEI2ICC = POS2CNT;
			QEI2CMPL = POS2CNT;

			if (V.pacing == 0) {
				m35_2.stopped = true;
				m35_4.current = MIDLE;
			} else {
				m35_2.stopped = false;
			}

			if (m35_2.set || !m35_4.speed) {
				set_motor_speed(abs(m35_2.error), pi_freq_error);
			}

			/*
			 * test switch interface with motor control
			 */
			if (get_switch(S2)) { // enable motor current for calibration
				int i = 40;
				U1_EN_Clear();
				U2_EN_Clear();
				WaitMs(10000);
//				MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, 0);
//				MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, 1000);
				U2_EN_Set();
				PWM_motor2(M_CAL);
				do {
					sprintf(buffer, "%4i:P %4i %4i %4i  %4i      ", i, hb_current(u1bi, false), hb_current(u2ai, false), hb_current(u2bi, false), hb_current(u_total, false));
					eaDogM_WriteStringAtPos(4, 0, buffer);
					OledUpdate();
					WaitMs(500);
				} while (i--);
				PWM_motor2(M_PWM);
				U2_EN_Clear();
			}

			if (get_switch(S1)) { // enable motor power
				U1_EN_Set();
				U2_EN_Set();
			}

			if (get_switch(S0)) { // disengage motor power
				U1_EN_Clear();
				U2_EN_Clear();
			}
		} else {
			/* flash the board led(s) using the position counter bits */
#ifdef QEI_SLOW
			LATGbits.LATG12 = m35_3.pos >> 3;
			LATGbits.LATG13 = m35_3.pos >> 5;
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
			mHz = (double) V.TimeUsed / 60.0; // 60MHz core timer clock for ms per sinewave tick
			mHz_raw = ((mHz * (double) sine_res) / 1000.0)* (double) NUM_POLE_PAIRS; // time in ms for a complete wave cycle for each motor pole pair
			mHz = 1000000.0 / mHz_raw;
			mHz_real = (double) INT2HLD;
			mHz_real = mHz_real / (60.0 / 128.0);
			mHz_real_raw = ((mHz_real * (double) ENCODER_PULSES_PER_REV) / 1000.0);
			mHz_real = 1000000.0 / mHz_real_raw;
			pi_velocity_error = UpdatePI(&velocity_pi, mHz_real - mHz);
			sr_slip = (mHz - mHz_real) / mHz;

			//run_tests(100000); // port diagnostics
			if (TimerDone(TMR_DISPLAY)) {
				/* format and send data to LCD screen */
				OledClearBuffer();
				sprintf(buffer, " Options: 1:%d 2:%d   %4.1f", option1_Get(), option2_Get(), pi_current_error);
				eaDogM_WriteStringAtPos(0, 0, buffer);
				sprintf(buffer, "C %5i:%i     %1i:%1i:%1i:%1i     ", m35_ptr->pos, m35_2.error, m35_2.cw, m35_2.ccw, m35_2.stopped, m35_2.set);
				eaDogM_WriteStringAtPos(1, 0, buffer);
				m35_ptr = &m35_2;
				sprintf(buffer, "C %4i:%i:%u:%u      ", POS2CNT, VEL2HLD, INT2HLD, INT2TMR);
				eaDogM_WriteStringAtPos(2, 0, buffer);
				m35_ptr = &m35_3;
				/*
				 * show some test results on the LCD screen
				 */
				sprintf(buffer, "Phase   L1   L2   L3  ");
				eaDogM_WriteStringAtPos(3, 0, buffer);
				sprintf(buffer, "%4i:P %4i %4i %4i  %4i      ", m35_2.erotations, hb_current(u1bi, false), hb_current(u2ai, false), hb_current(u2bi, false), hb_current(u_total, false));
				eaDogM_WriteStringAtPos(4, 0, buffer);
				sprintf(buffer, "%4i:M %4i %4i %4i  %4i      ", m35_2.indexcnt, hb_current(u1bi, true), hb_current(u2ai, true), hb_current(u2bi, true), hb_current(current_error, true));
				eaDogM_WriteStringAtPos(5, 0, buffer);
				sprintf(buffer, "%4i:S %4i %4i %4i  Pace %i", V.motor_speed, m35_2.sine_steps, m35_3.sine_steps, m35_4.sine_steps, V.pacing);
				eaDogM_WriteStringAtPos(6, 0, buffer);
				sprintf(buffer, "%4i:D %4i %4i %4i  S %i    ", m35_4.current, m35_2.duty, m35_3.duty, m35_4.duty, m35_4.speed);
				eaDogM_WriteStringAtPos(7, 0, buffer);
				sprintf(buffer, "Drive mHz %4.5f  %f  ", mHz, mHz_raw);
				eaDogM_WriteStringAtPos(8, 0, buffer);
				sprintf(buffer, "QEI   mHz %4.5f  %f  ", mHz_real, mHz_real_raw);
				eaDogM_WriteStringAtPos(9, 0, buffer);
				sprintf(buffer, "Velo Err %4.2f Slip %4.2f  ", pi_velocity_error, sr_slip);
				eaDogM_WriteStringAtPos(10, 0, buffer);
				rawtime = time(&rawtime);
				strftime(buffer, sizeof(buffer), "%w %c", gmtime(&rawtime));
				eaDogM_WriteStringAtPos(12, 0, buffer);
				sprintf(buffer, "%i    ", (int) t1_time);
				eaDogM_WriteStringAtPos(13, 0, buffer);
				sprintf(buffer, "CPU TEMPERATURE: %3.2fC    ", (((TEMP_OFFSET_ADC_STEPS - (double) an_data[TSENSOR]) * MV_STEP * TEMP_MV_C)) + 25.0);
				eaDogM_WriteStringAtPos(15, 0, buffer);
				motor_graph();
				OledUpdate();
				StartTimer(TMR_DISPLAY, 333);
			}
		}
	}

	/* Execution should not come here during normal operation */

	return( EXIT_FAILURE);
}

