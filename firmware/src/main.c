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

/*
 * PIC32MK hardware
 * timer 2	motor current PID 1.0ms
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

struct QEI_DATA m35_1 = {
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

struct SPid current_pi = {
	.iMax = 3000.0,
	.iMin = -3000.0,
	.pGain = 0.9, // 0.5
	.iGain = 0.425, // 0.125
};

struct SPid velocity_pi = {
	.iMax = 50.0,
	.iMin = -50.0,
	.pGain = 3.25, // 0.5
	.iGain = 0.95, // 0.5 slip_drive
};

V_STATE vcan_state = V_init;
M_SPEED m_speed = M_SLEW;

volatile int32_t u1ai = 0, u1bi = 0, u2ai = 0, u2bi = 0, an_data[NUM_AN];
volatile uint16_t tickCount[TMR_COUNT];

volatile int32_t motor_speed = MOTOR_SPEED;
time_t rawtime;
volatile time_t t1_time;
struct tm * timeinfo;

uint32_t StartTime = 1, TimeUsed = 1;
double mHz = 0.0, mHz_real = 0.0, sr_slip = 0.0, mHz_raw = 0.0, mHz_real_raw = 0.0;

const uint8_t step_code[] = {// A,B,C bits in order
	0b101,
	0b100,
	0b110,
	0b010,
	0b011,
	0b001,
	0b101,
};

void my_time(uint32_t, uintptr_t);
void move_pos_qei(uint32_t, uintptr_t);
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

time_t time(time_t *);

time_t time(time_t * Time)
{
	return t1_time;
}

/*
 * input position auto-positioning
 */
void my_time(uint32_t status, uintptr_t context)
{
	t1_time++;
}

/*
 * input position auto-positioning
 */
void move_pos_qei(uint32_t status, uintptr_t context)
{

#ifdef SLIP_DRIVE
	if (true) {
		POS3CNT = POS2CNT + MOTOR_SLIP; // movement offset
	}
#endif
	return;
}

uint32_t velo_loop(double, bool);

uint32_t velo_loop(double error, bool stop)
{
	uint32_t pace = 1;


	if (stop) {
		return 0;
	}
	
#ifdef SLIP_DRIVE
	static uint32_t sequence1 = 0, sequence2 = 0;
	if (error > 20.01) {
		pace = sequence1++ & 1;
	} else if (error < -20.01) {
		pace = sequence2++ & 1;
		if (pace)
			pace = 2;
	} else {
		pace = 1;
	}
#endif

	return pace;
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
	char buffer[80];
	uint8_t i;
	uint32_t pacing = 1;
	double pi_current_error = 0.0, pi_velocity_error = 0.0;

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
#ifdef EDOGS_DEMO
	uint32_t irow = 0;
	int32_t x2 = 205, x1 = 220, y1 = 100, xn1, yn1, xn2, yn2, r;
	double theta1 = 0.0, theta2 = 120.0, theta3 = 240.0;
	double ra, si, co;


	while (true) {
		if (TimerDone(TMR_LCD_UP)) {
			StartTimer(TMR_LCD_UP, 15);
			OledClearBuffer();
			sprintf(buffer, "%i", irow);
			OledPutString(buffer);

			OledSetCursor(0, 1);
			OledPutString("3PH VECTOR");
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
			OledUpdate();

			irow++;
			theta1 = theta1 + 1.5; // rotate
			if (theta1 > 360.0)
				theta1 = 0.0;
			theta2 = theta2 + 1.25; // rotate
			if (theta2 > 360.0)
				theta2 = 0.0;
			theta3 = theta3 + 2.0; // rotate
			if (theta3 > 360.0)
				theta3 = 0.0;
		}

		if (TimerDone(TMR_BLINK)) {
			StartTimer(TMR_BLINK, 1000);
			RESET_LED_Toggle();
		}
	}
#endif
#endif

	sprintf(buffer, "VCAN %s %s       ", build_date, build_time);
	eaDogM_WriteStringAtPos(0, 0, buffer);
	OledUpdate();
	WaitMs(500);

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
		MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, ((step_code[i & 0x7] >> 2)&0x1) * hpwm_mid_duty);
		MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, ((step_code[i & 0x7] >> 1)&0x1) * hpwm_mid_duty);
		MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, ((step_code[i & 0x7] >> 0)&0x1) * hpwm_mid_duty);
		switch (i) {
		case 0:
			MCPWM_Start();
			WaitMs(400);
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
			eaDogM_WriteStringAtPos(2, 0, buffer);
			m35_2.ppp = POS2CNT;
			POS2CNT = 0; // reset zero for new home
			break;
		case 1:
		default:
			sprintf(buffer, "HP %7i      ", POS2CNT);
			eaDogM_WriteStringAtPos(1, 0, buffer);
			break;
		}
		OledUpdate();
		WaitMs(100);
	}
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, 0);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, 0);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, 0);
	WaitMs(2000);

	vcan_state = V_home;
	TMR3_Start(); // start auto movement functions
	PWM_motor2(M_PWM);
	StartTime = (uint32_t) _CP0_GET_COUNT();

	while (true) {
		/* Maintain state machines of all polled MPLAB Harmony modules. */
		SYS_Tasks();

		/*
		 * update slow velocity every second by reading velocity counters
		 */
		if (TimerDone(TMR_VEL)) {
			StartTimer(TMR_VEL, 1000);

		}

		if (TimerDone(TMR_MOTOR)) {
			StartTimer(TMR_MOTOR, MOTOR_UPDATES);

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

			m35_2.error = (m35_3.pos * m35_3.gain) - m35_2.pos, 4;

			pi_current_error = UpdatePI(&current_pi, (double) m35_2.error);

			/*
			 * generate a positioning error drive signal
			 */
			m35_4.current = abs((int32_t) pi_current_error) + MBIAS;

			/*
			 * limit motor drive
			 */
			if (m35_4.current > motor_volts) {
				m35_4.current = motor_volts;
			}
			if (m35_4.current > (m35_4.current_prev + 1)) {
				m35_4.current = m35_4.current_prev + 1 + MBIAS;
			}

			if (m35_4.current > motor_volts) {
				m35_4.current = motor_volts;
			}

			m35_4.current_prev = m35_4.current;

			if (abs(m35_2.error) < motor_error_stop) {
				m35_4.current = 0;
				m35_2.set = true;
//				U1_EN_Clear();
//				U2_EN_Clear();
			} else {
				m35_2.set = false;
//				U1_EN_Set();
//				U2_EN_Set();
			}

			if (!--m35_4.speed) {
				//DEBUGB0_Set();
				DEBUGB0_Toggle();
				TimeUsed = (uint32_t) _CP0_GET_COUNT() - StartTime;
				StartTime = (uint32_t) _CP0_GET_COUNT();
				m35_1.vel = VEL1CNT;
				m35_2.vel = VEL2CNT;
				m35_3.vel = VEL3CNT;
				pacing = velo_loop(pi_velocity_error, m35_2.set);
				phase_duty(&m35_2, m35_4.current, m_speed, pacing);
				phase_duty(&m35_3, m35_4.current, m_speed, pacing);
				phase_duty(&m35_4, m35_4.current, m_speed, pacing);
				if (abs(m35_2.error) > 1000)
					motor_speed = 2;
				if (abs(m35_2.error) < 100)
					motor_speed = 10;
				if (abs(m35_2.error) < 50)
					motor_speed = 50;
				if (abs(m35_2.error) < 15)
					motor_speed = 1000;
				m35_4.speed = motor_speed;
				//DEBUGB0_Clear();
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

			/*
			 * test switch interface with motor control
			 */
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
			mHz = (double) TimeUsed / 60.0; // 60MHz core timer clock for ms per sinewave tick
			mHz_raw = ((mHz * (double) sine_res) / 1000.0)* (double) NUM_POLE_PAIRS; // time in ms for a complete wave cycle for each motor pole pair
			mHz = 1000000.0 / mHz_raw;
			mHz_real = (double) INT2HLD;
			mHz_real = mHz_real / (60.0 / 128.0);
			mHz_real_raw = ((mHz_real * (double) ENCODER_PULSES_PER_REV) / 1000.0);
			mHz_real = 1000000.0 / mHz_real_raw;
			//			MCLIB_LinearRamp(&mHz_real_raw, 15.0, mHz_real_raw);
			//			pi_velocity_error = UpdatePI(&velocity_pi, (mHz_raw / 10000.0) - (mHz_real_raw / 10000.0));
			pi_velocity_error = UpdatePI(&velocity_pi, mHz_real - mHz);
			sr_slip = (mHz - mHz_real) / mHz;

			//run_tests(100000); // port diagnostics
			if (TimerDone(TMR_DISPLAY)) {
				/* format and send data to LCD screen */
				OledClearBuffer();
				sprintf(buffer, "C %5i:%i      ", m35_ptr->pos, m35_2.error);
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
				sprintf(buffer, "%5i: %4i %4i %4i         ", m35_2.erotations, u1bi, u2ai, u2bi);
				eaDogM_WriteStringAtPos(4, 0, buffer);
				sprintf(buffer, "%5i: %4i %4i %4i         ", m35_2.indexcnt, hb_current(u1bi), hb_current(u2ai), hb_current(u2bi));
				eaDogM_WriteStringAtPos(5, 0, buffer);
				sprintf(buffer, "%5i: %4i %4i %4i  Pace %i", motor_speed, m35_2.sine_steps, m35_3.sine_steps, m35_4.sine_steps, pacing);
				eaDogM_WriteStringAtPos(6, 0, buffer);
				sprintf(buffer, "%5i: %4i %4i %4i    ", m35_4.current, m35_2.duty, m35_3.duty, m35_4.duty);
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
				motor_graph();
				OledUpdate();
				StartTimer(TMR_DISPLAY, 333);
			}
		}
	}

	/* Execution should not come here during normal operation */

	return( EXIT_FAILURE);
}

