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
#include "scmd.h"
#include "peripheral/coretimer/plib_coretimer.h"
#include "gfx.h"

const char *build_date = __DATE__, *build_time = __TIME__;
extern t_cli_ctx cli_ctx; // command buffer 

volatile struct QEI_DATA m35_1 = {
	.duty = MPCURRENT, // default motor duty
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
	.iGain = 0.01, // 0.8
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
int32_t xa, ya, za;
extern CORETIMER_OBJECT coreTmr;
const uint32_t update_delay = 5;
volatile float q0 = 1.0, q1 = 1.0, q2 = 1.0, q3 = 1.0; // quaternion 

time_t time(time_t *);
void my_time(uint32_t, uintptr_t);
void my_index(GPIO_PIN, uintptr_t);
void move_pos_qei(uint32_t, uintptr_t);
void set_motor_speed(const uint32_t, double);
int32_t velo_loop(double, bool);
void wave_gen(uint32_t, uintptr_t);
void BDC_motor(uint32_t);

void BDC_motor(uint32_t m_type)
{
	char buffer[STR_BUF_SIZE];
	uint32_t i = 11500, j = 6000;
	bool gfx_move = false, gfx_reset = false;

	TMR2_Stop();
	TMR3_Stop();

	//Module CTMU
	PMD1bits.CTMUMD = 0; //Enable CTMU Module
	CTMUCONbits.TGEN = 0; // TGEN = 0 for enable current through diode
	CTMUCONbits.EDG1STAT = 1; // EDGESTAT1 = EDGESTAT2  for enable current trough diode
	CTMUCONbits.EDG2STAT = 1; // EDGESTAT1 = EDGESTAT2  for enable current trough diode
	CTMUCONbits.IRNG = 0b11; //100xBase current level
	CTMUCONbits.ON = 1; // CTMU is ON

	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, i);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, 6000);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, 0);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, 0);
	MCPWM_Start();
	U1_EN_Set();
	U2_EN_Set();
	if (m_type == 1) {
		while (true) {
			sprintf(buffer, "TMP %5i      ", an_data[TSENSOR]);
			eaDogM_WriteStringAtPos(0, 0, buffer);
			sprintf(buffer, "IM1 %5i      ", u1ai);
			eaDogM_WriteStringAtPos(1, 0, buffer);
			sprintf(buffer, "IM2 %5i      ", u1bi);
			eaDogM_WriteStringAtPos(2, 0, buffer);
			sprintf(buffer, "POT %5i      ", KNOB1_INC);
			eaDogM_WriteStringAtPos(3, 0, buffer);
			sprintf(buffer, "HP  %5i      ", MOTOR1_INC);
			eaDogM_WriteStringAtPos(4, 0, buffer);
			sprintf(buffer, "PWM  %5i      ", j);
			eaDogM_WriteStringAtPos(5, 0, buffer);
			start_adc_scan();

			if (TimerDone(TMR_MOTOR)) {
				StartTimer(TMR_MOTOR, 10000);
				i += 8000;
				if (i > 11000) {
					i = 2000;
					j = 7000;
					gfx_move = true;
				} else {
					j = 5000;
					gfx_move = false;
				}
				MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, j);
			}

			if (TimerDone(TMR_DISPLAY)) {
				vector_graph(gfx_move, gfx_reset);
				{
					//	100 Hz updates, processing takes 5ms
					uint32_t tickStart, delayTicks;
					tickStart = coreTmr.tickCounter;
					delayTicks = (1000 * update_delay) / CORE_TIMER_INTERRUPT_PERIOD_IN_US; // Number of tick interrupts to wait for the delay
					LA_gfx(false, false, 0);
					while ((coreTmr.tickCounter - tickStart) < delayTicks) {
						// extra processing loop while waiting for clock time to expire
						LA_gfx(false, false, 400);
					}
				}
				OledUpdate();
				StartTimer(TMR_DISPLAY, 100);
			}
			if (TimerDone(TMR_BLINK)) {
				StartTimer(TMR_BLINK, 500);
				RESET_LED_Toggle();
				OledClearBuffer();
			}
		}
	}
}

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

	V.TimeUsed = (uint32_t) _CP0_GET_COUNT() - V.StartTime;
	V.StartTime = (uint32_t) _CP0_GET_COUNT();
	/*
	 * load sinewave constants from three-phase 360 values per cycle lookup tables
	 */
	phase_duty(&m35_2, m35_4.current, V.m_speed, 2);
	phase_duty(&m35_3, m35_4.current, V.m_speed, 2);
	phase_duty(&m35_4, m35_4.current, V.m_speed, 2);
	/*
	 * generate a current error drive signal
	 */
	m35_4.current = MPCURRENT;
	/*
	 * limit motor drive current
	 */
	if (m35_4.current > motor_volts) {
		m35_4.current = motor_volts;
	}
	m35_4.current_prev = m35_4.current;

	/*
	 * set channel duty cycle for motor sinewave outputs at ISR time 1ms intervals
	 */
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, m35_2.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, m35_2.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, m35_3.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, m35_4.duty);
	V.pwm_update = false;
	DEBUGB0_Clear();
}

/*
 * SOSC timer #1
 */
void my_time(uint32_t status, uintptr_t context)
{
	t1_time++;
#ifdef G400HZ
	//	start_adc_scan();
#endif
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
	freq_pi.pGain = 2.0;
	freq_pi.iGain = 1.125;
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

void fh_hw(void *a_data)
{
	t_cli_ctx *cmd = a_data;
	POS3CNT = 1000;
	UART3_Write((uint8_t*) cmd->cmd, strlen(cmd->cmd));
}

void fh_hi(void *a_data)
{
	POS3CNT = 3000;
	UART3_Write((uint8_t*) " hi      ", 8);
}

void fh_ho(void *a_data)
{
	POS3CNT = 0;
	UART3_Write((uint8_t*) " ho      ", 8);
}

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main(void)
{
	char buffer[STR_BUF_SIZE];

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
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, duty_max); // neutral channel set to zero reference
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, duty_max);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, duty_max);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, duty_max);

	time(&rawtime);
	timeinfo = localtime(&rawtime);

	//Module CTMU for temp diode current
	PMD1bits.CTMUMD = 0; //Enable CTMU Module
	CTMUCONbits.TGEN = 0; // TGEN = 0 for enable current through diode
	CTMUCONbits.EDG1STAT = 1; // EDGESTAT1 = EDGESTAT2  for enable current trough diode
	CTMUCONbits.EDG2STAT = 1; // EDGESTAT1 = EDGESTAT2  for enable current trough diode
	CTMUCONbits.IRNG = 0b11; //100xBase current level
	CTMUCONbits.ON = 1; // CTMU is ON

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
		sprintf(buffer, " Options: 1:%d 2:%d ", option1_Get(), option2_Get());
		eaDogM_WriteStringAtPos(2, 0, buffer);
		OledUpdate();
		WaitMs(5000);
	} else {
		sprintf(buffer, "VCAN %s %s       ", build_date, build_time);
		eaDogM_WriteStringAtPos(0, 0, buffer);
		sprintf(buffer, "Clock Status %04x      ", CLKSTAT);
		eaDogM_WriteStringAtPos(1, 0, buffer);
		sprintf(buffer, " Options: 1:%d 2:%d ", option1_Get(), option2_Get());
		eaDogM_WriteStringAtPos(2, 0, buffer);
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

	/* Start system tick timer */
	CORETIMER_Start();

#ifdef	BDCM
	BDC_motor(1);
#endif



	V.vcan_state = V_home;
	//	TMR3_Start(); // start auto movement functions
	PWM_motor2(M_PWM);
	V.StartTime = (uint32_t) _CP0_GET_COUNT();
	/*
	 * start ISR for PWM waveform generator
	 */
	TMR2_Stop();
	TMR2_CallbackRegister(wave_gen, 0);
	TMR2_Start();
	// setup motor position values
	m35_4.current = MPCURRENT;
	V.pacing = 1;
	phase_duty(&m35_2, m35_4.current, V.m_speed, V.pacing);
	phase_duty(&m35_3, m35_4.current, V.m_speed, V.pacing);
	phase_duty(&m35_4, m35_4.current, V.m_speed, V.pacing);

	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_1, m35_2.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_2, m35_2.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3, m35_4.duty);
	MCPWM_ChannelPrimaryDutySet(MCPWM_CH_4, m35_3.duty);
		/*
	 * enable inverter channels
	 */
	U1_EN_Set();
	U2_EN_Set();
	MCPWM_Start();
	
	V.pwm_stop = false; // let ISR generate waveforms

	/*
	 * init serial command parser
	 */
	scmd_init();

	while (true) {
		/* Maintain state machines of all polled MPLAB Harmony modules. */
		SYS_Tasks();

#ifndef G400HZ_NODIS
		if (TimerDone(TMR_MOTOR)) {
			StartTimer(TMR_MOTOR, MOTOR_UPDATES);
			/*
			 * read serial port 3 for command data
			 */
			cli_read(&cli_ctx);

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
			//run_tests(100000); // port diagnostics
			if (TimerDone(TMR_DISPLAY)) {
				/* format and send data to LCD screen */
				OledClearBuffer();
				sprintf(buffer, " Options: 1:%d 2:%d   %4.1f", option1_Get(), option2_Get(), pi_current_error);
				eaDogM_WriteStringAtPos(0, 0, buffer);
				m35_ptr = &m35_2;
				sprintf(buffer, "C %4i:%i:%u      ", POS2CNT, VEL2HLD, INT2HLD);
				eaDogM_WriteStringAtPos(1, 0, buffer);
				m35_ptr = &m35_3;
				/*
				 * show some test results on the LCD screen
				 */
				sprintf(buffer, "Phase    L1   L2   L3     N");
				eaDogM_WriteStringAtPos(3, 0, buffer);
				sprintf(buffer, "%4i:P %4i %4i %4i  %4i      ", m35_2.erotations / (int) t1_time, hb_current(u1bi, false), hb_current(u2ai, false), hb_current(u2bi, false), hb_current(u1ai, false));
				eaDogM_WriteStringAtPos(4, 0, buffer);
				sprintf(buffer, "%4i:M %4i %4i %4i  %4i      ", m35_2.indexcnt, hb_current(u1bi, true), hb_current(u2ai, true), hb_current(u2bi, true), hb_current(u1ai, true));
				eaDogM_WriteStringAtPos(5, 0, buffer);
				sprintf(buffer, "%4i:S %4i %4i %4i  ", V.TimeUsed, m35_2.sine_steps, m35_3.sine_steps, m35_4.sine_steps);
				eaDogM_WriteStringAtPos(6, 0, buffer);
				sprintf(buffer, "%4i:Drive     ", m35_4.current);
				eaDogM_WriteStringAtPos(7, 0, buffer);
				sprintf(buffer, "%4i:D %5i %5i %5i  ", V.TimeUsed, m35_2.duty, m35_3.duty, m35_4.duty);
				eaDogM_WriteStringAtPos(8, 0, buffer);
				rawtime = time(&rawtime);
				strftime(buffer, sizeof(buffer), "%w %c", gmtime(&rawtime));
				eaDogM_WriteStringAtPos(12, 0, buffer);
				sprintf(buffer, "CPU TEMPERATURE: %3.2fC    ", lp_filter_f(((((TEMP_OFFSET_ADC_STEPS - (double) an_data[TSENSOR]) * MV_STEP * TEMP_MV_C)) + 25.0), 4));
				eaDogM_WriteStringAtPos(15, 0, buffer);
				motor_graph(true, false);
				OledUpdate();
				StartTimer(TMR_DISPLAY, 200);
			}
		}
#endif
		if (TimerDone(TMR_BLINK)) {
			StartTimer(TMR_BLINK, 1000);
			RESET_LED_Toggle();
		}
	}

	/* Execution should not come here during normal operation */

	return( EXIT_FAILURE);
}

