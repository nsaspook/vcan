#include "gfx.h"

void line_rot(uint32_t x1, uint32_t y1, uint32_t x2, uint32_t y2)
{
	OledMoveTo((int32_t) x1, (int32_t) y1);
	OledLineTo((int32_t) x2, (int32_t) y2);
}

void vector_graph(void)
{
	static uint32_t irow = 0;
	static int32_t x2 = 100, x1 = 130, y1 = 35, xn1, yn1, xn2, yn2, r;
	static double theta1 = sinea, theta2 = sineb, theta3 = sinec;
	static double ra, si, co;

	OledMoveTo(60, 0);
	OledLineTo(180, 0);
	OledLineTo(180, 70);
	OledMoveTo(60, 0);
	OledLineTo(60, 70);
	OledLineTo(180, 70);
	
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
	theta1 = theta1 + q1; // rotate
	if (theta1 > sine_res) {
		theta1 = 0.0;
	}
	theta2 = theta2 + q2; // rotate
	if (theta2 > sine_res) {
		theta2 = 0.0;
	}
	theta3 = theta3 + q3; // rotate
	if (theta3 > sine_res) {
		theta3 = 0.0;
	}
}
