#include "vcan.h"
#include "adc_scan.h"

void end_of_adc_scan(void)
{
	/*
	 * check for ADC scanning done, a 'end of scan' interrupt ISR
	 */


	if ((ADCCON2 & _ADCCON2_EOSRDY_MASK)) { //  End of Scan Interrupt Status bit
		/*
		 * update program variables from the ADC result registers
		 */
		u2ai = ADCHS_ChannelResultGet(ADCHS_CH23); // JP5 pin 7, AN23, FBB2/RG15
		u2bi = ADCHS_ChannelResultGet(ADCHS_CH14); // JP5 pin 6, AN14, FBA2/RE14
		u1ai = ADCHS_ChannelResultGet(ADCHS_CH37); // JP5 pin 5, AN37, FBA1/RF12
		u1bi = ADCHS_ChannelResultGet(ADCHS_CH36); // JP5 pin 4, AN36, FBB1/RF13
		an_data[ANA1] = ADCHS_ChannelResultGet(ADCHS_CH1); // JP5 pin x, AN1, ANA1/RA1
		an_data[POT1] = ADCHS_ChannelResultGet(ADCHS_CH11); // JP5 pin x, AN11 POT1/RC11
		an_data[POT2] = ADCHS_ChannelResultGet(ADCHS_CH17); // JP5 pin x, AN17 POT2/RG8
		an_data[IVREF] = ADCHS_ChannelResultGet(ADCHS_CH50); // IVREF 1.2V (internal AN50)
		an_data[VBAT2] = ADCHS_ChannelResultGet(ADCHS_CH52); // VBAT/2 (internal AN52)
		an_data[TSENSOR] = ADCHS_ChannelResultGet(ADCHS_CH53); //  CTMU Temperature Sensor (internal AN53)
		if (!option1_Get()) {
			u1bi = u1ai;
		}
		u1ai = (int32_t) lp_filter_f((double) u1ai, 0); // try filter
		u1bi = (int32_t) lp_filter_f((double) u1bi, 1);
		u2ai = (int32_t) lp_filter_f((double) u2ai, 2);
		u2bi = (int32_t) lp_filter_f((double) u2bi, 3);
		u_total = u1bi + u2ai + u2bi;
	}
	IFS3CLR = _IFS3_AD1EOSIF_MASK; // Clear the interrupt
	ADCCON3SET = _ADCCON3_GSWTRG_MASK; // scan re-trigger
}

void init_end_of_adc_scan(void)
{
	filters_init();

	/*
	 * AN14/pin 6, AN23/pin 7, AN36/pin 4, AN37/pin 5, AN11/pin 2, AN17/pin 11
	 * set ADC trigger to SCAN and start SCAN trigger
	 */

	ADCCON1bits.STRGSRC = 1; // set trigger source 5-bit value
	ADCCON3SET = _ADCCON3_GSWTRG_MASK; // use scan trigger

	IFS3CLR = _IFS3_AD1EOSIF_MASK; // Clear the interrupt
	IEC3SET = _IEC3_AD1EOSIE_MASK; // Enable the interrupt VECTOR

	ADCCON2SET = _ADCCON2_EOSIEN_MASK; // ENABLE EOS INTERRUPTS
}

/*
 * take ADC shunt measurement of phase current, convert to milliamps of current with possible motor current correction
 */
int32_t hb_current(const int32_t adc_value, const bool motor)
{
	double adc_step = MV_STEP;

	if (motor) {
		return(int32_t) ((((double) adc_value * adc_step) * HB_SCALE) * MOTOR_CURRENT_SCALE);
	} else {
		return(int32_t) ((((double) adc_value * adc_step) * HB_SCALE));
	}
}

void start_adc_scan(void)
{
	ADCCON3SET = _ADCCON3_GSWTRG_MASK; // scan re-trigger	
}
