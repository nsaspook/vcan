#include "vcan.h"
#include "filters.h"

// == bit fixed point 2.14 format ===============================
// resolution 2^-14 =  6.1035e-5
// dynamic range is +1.9999/-2.0
typedef signed short fix16;
#define multfix16(a,b) ((fix16)((((long)(a))*((long)(b)))>>14)) //multiply two fixed 2.14
#define float2fix16(a) ((fix16)((a)*16384.0)) // 2^14
#define fix2float16(a) ((float)(a)/16384.0)

//== One-pole (RC) lowpass filter, 16-bit ========================
// coeff = {b2, -a2} noting that b1=b2 and a1=1
// history = { last_input, last_output} for each channel
fix16 coeff[2], history[NUM_FILTERS * 2], output, input;

fix16 IIR_butter_1_16(fix16 input, fix16 *coeff, fix16 *history, uint8_t chan)
{
	uint8_t offset = chan * 2;
	fix16 output;

	//	DEBUGB0_Set();
	if (chan >= NUM_FILTERS) {
		return float2fix16(0.0);
	}

	output = multfix16(input + history[0 + offset], coeff[0]) + multfix16(history[1 + offset], coeff[1]);
	history[0 + offset] = input;
	history[1 + offset] = output;
	//	DEBUGB0_Clear();
	return output;
}

//== Two-pole lowpass filter, 16-bit ========================
// coeff = {b1, -a2, -a3} noting that b1=b3 b2=2*b1 and a1=1
// history = { last_1_input, last_2_input, last_1_output, last_2_output}
fix16 coeff2[3], history2[NUM_FILTERS * 4];

fix16 IIR_butter_lp_2_16(fix16 input, fix16 *coeff2, fix16 *history2, uint8_t chan)
{
	uint8_t offset = chan * 4;
	fix16 output;

	if (chan >= NUM_FILTERS) {
		return float2fix16(0.0);
	}

	output = multfix16(input + (history2[0 + offset] << 1) + history2[1 + offset], coeff2[0]) +
		multfix16(history2[2 + offset], coeff2[1]) +
		multfix16(history2[3 + offset], coeff2[2]);
	history2[1 + offset] = history2[0 + offset];
	history2[0 + offset] = input;
	history2[3 + offset] = history2[2 + offset];
	history2[2 + offset] = output;
	return output;
}

void filters_init(void)
{
	int32_t i = 0;
	fix16 j = float2fix16(0.0);

	// set up the IIR filter as output
	// from butter(1,0.01) in matlab (or Octave)
	coeff[0] = float2fix16(0.0155);
	coeff[1] = float2fix16(0.9691);
	for (i = 0; i < NUM_FILTERS * 2; i++) {
		history[i] = j;
	}

	// second order filter
	// from butter(2, 0.1 );
	coeff2[0] = float2fix16(0.0201);
	coeff2[1] = float2fix16(1.5610);
	coeff2[2] = float2fix16(-0.6414);
	for (i = 0; i < NUM_FILTERS * 4; i++) {
		history2[i] = j;
	}
}

int32_t lp_filter(int32_t input, uint8_t chan)
{
	output = IIR_butter_1_16(input, coeff, history, chan);
	return output;
}

int32_t lp_filter2(int32_t input, uint8_t chan)
{
	output = IIR_butter_lp_2_16(input, coeff2, history2, chan);
	return output;
}
