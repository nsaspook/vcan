//
// automatically generated by spin2cpp v3.4.0-beta on Mon Nov 14 09:24:09 2016
// spin2cpp --ccode --gas s3.spin 
//

#ifndef s3_Class_Defined__
#define s3_Class_Defined__

#include <stdint.h>
#include "scribbler.h"

#define S3_BAR_THLD (32)
#define S3_OBSTACLE_THLD (20)
#define S3_SPKR_VOL (35)
#define S3_NONE (0)
#define S3_LEFT (1)
#define S3_RIGHT (2)
#define S3_CENTER (3)
#define S3_POWER (4)
#define S3_DETECTED (5)
#define S3_IS (0)
#define S3_IS_NOT (1)
#define S3_WAS (2)
#define S3_WAS_NOT (3)
#define S3_BLACK (0)
#define S3_WHITE (1)
#define S3_STRAIGHT (0)
#define S3_SLIGHT_RIGHT (1)
#define S3_GENTLE_RIGHT (2)
#define S3_SHARP_RIGHT (3)
#define S3_SLIGHT_LEFT (4)
#define S3_GENTLE_LEFT (5)
#define S3_SHARP_LEFT (6)
#define S3_COLOR_FF0000 (SCRIBBLER_RED)
#define S3_COLOR_FF7F00 (90)
#define S3_COLOR_00FF00 (SCRIBBLER_GREEN)
#define S3_OFF (0)
#define S3_COLOR_000000 (S3_OFF)
#define S3_ADC_A0 (SCRIBBLER_ADC_P6)
#define S3_ADC_A1 (SCRIBBLER_ADC_P7)





//    Control Character Constants
// ─────────────────────────────────────
// CS: Clear Screen
#define S3_CS (16)
// PC: Position Cursor in x,y
#define S3_PC (2)
// PX: Position cursor in X
#define S3_PX (14)
// PY: Position cursor in Y
#define S3_PY (15)
// NL: New Line
#define S3_NL (13)
// LF: Line Feed
#define S3_LF (10)
// BS: BackSpace
#define S3_BS (8)

typedef struct s3 {
  volatile int32_t	pLeftMotor, pRightMotor, pMoveTime, FMStack[50], stack[30], seed;
  volatile uint8_t	RunningCog, obs[3], WasObs[3], WasLine[3], WasLight[4], WasRandom, WasStalled, WasButton, WasLeftVelocity, WasRightVelocity;
  scribbler	Scribbler;
} s3;

  void s3_setup();
  void s3_motorSet(int32_t LeftVelocity, int32_t RightVelocity, int32_t move_time);
  void s3_motorSetDistance(int32_t left_distance, int32_t right_distance, int32_t max_speed);
  void s3_motorSetRotate(int32_t degrees, int32_t radius, int32_t max_speed);
  void s3_motorGotoXY(int32_t x_loc, int32_t y_loc, int32_t max_speed);
  int32_t s3_motorsMoving();
  int32_t s3_tailWheelMoving();
  void s3_simpleDrive(int32_t Direction, int32_t Speed);
  void s3_simpleSpin(int32_t Angle, int32_t Speed, int32_t Resume);
  void s3_simpleStop();
  void s3_setVolume(int32_t Volume);
  void s3_setVoices(int32_t voice1, int32_t voice2);
  void s3_playNote(int32_t freq1, int32_t freq2, int32_t duration);
  void s3_simplePlay(int32_t Frequency, int32_t Duration, int32_t Volume);
  int32_t s3_readBars();
  int32_t s3_readObstacle(int32_t Side);
  int32_t s3_simpleObstacle(int32_t Condition, int32_t Location);
  int32_t s3_lineSensor(int32_t Side);
  int32_t s3_simpleLine(int32_t Condition, int32_t Location, int32_t Color);
  int32_t s3_lightSensor(int32_t Side);
  int32_t s3_simpleLight(int32_t Condition, int32_t Location);
  void s3_setLED(int32_t LED, int32_t Color);
  int32_t s3_stalled();
  int32_t s3_simpleStalled(int32_t Condition);
  int32_t s3_simpleButton(int32_t Condition);
  int32_t s3_simpleRandom(int32_t Condition);
  int32_t s3_booleanRandom();
  int32_t s3_randomRange(int32_t A, int32_t B);
  int32_t s3_buttonCount();
  int32_t s3_buttonPressed();
  int32_t s3_resetButtonCount();
  int32_t s3_runWithoutResult(int32_t input);
  int32_t s3_ping(int32_t Pin);
  void s3_enableMic();
  int32_t s3_readMic();
  void s3_memoryWrite(int32_t Addr, int32_t Value);
  int32_t s3_memoryRead(int32_t Addr);
  int32_t s3_readADC(int32_t p);
#endif