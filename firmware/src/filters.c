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
fix16 coeff[2], history[8], output, input;

fix16 IIR_butter_1_16(fix16 input, fix16 *coeff, fix16 *history, uint8_t chan)
{
	fix16 output;

//	DEBUGB0_Set();
	if (chan > 3) {
		DEBUGB0_Clear();
		return float2fix16(0.0);
	}

	chan = chan * 2;
	output = multfix16(input + history[0 + chan], coeff[0]) + multfix16(history[1 + chan], coeff[1]);
	history[0 + chan] = input;
	history[1 + chan] = output;
//	DEBUGB0_Clear();
	return output;
}

//== Two-pole lowpass filter, 16-bit ========================
// coeff = {b1, -a2, -a3} noting that b1=b3 b2=2*b1 and a1=1
// history = { last_1_input, last_2_input, last_1_output, last_2_output}
fix16 coeff2[3], history2[4];

fix16 IIR_butter_lp_2_16(fix16 input, fix16 *coeff2, fix16 *history2)
{
	fix16 output;
	output = multfix16(input + (history2[0] << 1) + history2[1], coeff2[0]) +
		multfix16(history2[2], coeff2[1]) +
		multfix16(history2[3], coeff2[2]);
	history2[1] = history2[0];
	history2[0] = input;
	history2[3] = history2[2];
	history2[2] = output;
	return output;
}

void filters_init(void)
{
	// set up the IIR filter as output
	// from butter(1,0.01) in matlab (or Octave)
	coeff[0] = float2fix16(0.0155);
	coeff[1] = float2fix16(0.9691);
	history[0] = float2fix16(0.0);
	history[1] = float2fix16(0.0);
	history[2] = float2fix16(0.0);
	history[3] = float2fix16(0.0);

	// second order filter
	// from butter(2, 0.1 );
	coeff2[0] = float2fix16(0.0201);
	coeff2[1] = float2fix16(1.5610);
	coeff2[2] = float2fix16(-0.6414);
	history2[0] = float2fix16(0.0);
	history2[1] = float2fix16(0.0);
	history2[2] = float2fix16(0.0);
	history2[3] = float2fix16(0.0);
}

int32_t lp_filter(int32_t input, uint8_t chan)
{
	output = IIR_butter_1_16(input, coeff, history, chan);
	return output;
}

int32_t lp_filter2(int32_t input)
{
	output = IIR_butter_lp_2_16(input, coeff2, history2);
	return output;
}
