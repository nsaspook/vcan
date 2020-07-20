
#include "pid.h"

/*
 * converted to PI for motor control
 */
double UpdatePI(struct SPid * pid, double error)
{
	double pTerm, iTerm;

	pTerm = pid->pGain * error; // calculate the proportional term
	// calculate the integral state with appropriate limiting
	pid->iState += error;
	
	if (pid->iState > pid->iMax) {
		pid->iState = pid->iMax;
	} else if (pid->iState < pid->iMin) {
		pid->iState = pid->iMin;
	}
	
	iTerm = pid->iGain * pid->iState; // calculate the integral term
	
	return pTerm + iTerm;
}


