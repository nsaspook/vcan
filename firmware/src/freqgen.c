#include "freqgen.h"

static double sine_const[sine_res + 1];
static double table[256];
extern struct QEI_DATA m35_1, m35_2, m35_3, m35_4;

static double sine_foo(struct QEI_DATA *);

void sine_table(void)
{
	int I;

	sine_const[0] = 0.0;
	for (I = 1; I <= sine_res; I++) {
		sine_const[I] = sin(((double) I * PI * 2.0) / (double) sine_res);
	}

}

/*
 * slew speed sinusoidal commutation for PWM using table
 */
int32_t phase_duty_table(struct QEI_DATA *phase, double mag)
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

/*
 * micro-stepping  sinusoidal commutation for PWM using sine_foo
 */
int32_t phase_duty(struct QEI_DATA *phase, double mag)
{
	phase->duty = (int32_t) (hpwm_mid_duty_f + (mag * sine_foo(phase)));

	if (phase->duty > hpwm_high_duty) {
		phase->duty = hpwm_high_duty;
	}
	if (phase->duty < hpwm_low_duty) {
		phase->duty = hpwm_low_duty;
	}
	return phase->duty;
}

/*
 * https://namoseley.wordpress.com/2015/07/26/sincos-generation-using-table-lookup-and-iterpolation/
 */

/*Get integer types with well-defined number of bits */

/* Define a table of 256 entries containing a single cycle waveform.
   The table entries are not shown.
 */

/* Fill the table with a single sin(x) cycle */
void fillTable(void)
{
	uint32_t i;
	for (i = 0; i < 256; i++)
		table[i] = sin(2.0 * PI * (double) i / 256.0);
}

/*
 * add 120 and 240 degree offsets to phase B and C
 */
void preset_phase(void)
{
	uint32_t i;

	for (i = 0; i <= SR120; i++)
		sine_foo(&m35_3);
	for (i = 0; i <= SR240; i++)
		sine_foo(&m35_4);
}

/*
 * generate one complete sine-wave cycle at one step per call
 */
static double sine_foo(struct QEI_DATA *phase)
{
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
	double frac = 2.0f * PI * (double) (phase->phaseAccumulator & 65535) / 65536.0f / 256.0f;

	// fractional sin/cos
	double f_sin = frac;
	double f_cos = 1.0f - 0.5f * frac*frac;

	double result = v_sin * f_cos + v_cos*f_sin;

	if (++phase->phase_steps > SAMPLERATE) { // reset per electrical rotation cycle
		phase->phase_steps = 0;
		phase->phaseAccumulator = 0;
	}
	phase->sin = result;
	return result;
}



