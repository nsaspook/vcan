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

// DOM-IGNORE-BEGIN
/*******************************************************************************
 * Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
 *
 * Subject to your compliance with these terms, you may use Microchip software
 * and any derivatives exclusively with Microchip products. It is your
 * responsibility to comply with third party license terms applicable to your
 * use of third party software (including open source software) that may
 * accompany Microchip software.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
 * PARTICULAR PURPOSE.
 *
 * IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
 * INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
 * WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
 * BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
 * FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
 * ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
 * THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *******************************************************************************/
// DOM-IGNORE-END

/*
 * program code and info links
 * 
 * https://github.com/parallaxinc/Simple-Libraries/tree/master/Learn/Simple%20Libraries/Sensor/liblsm9ds1
 * https://x-io.co.uk/open-source-imu-and-ahrs-algorithms/
 * https://github.com/farrellf/Balancing_Robot_Firmware/blob/a6a2d89da8498413812b75e70234a9cc3eda72fa/Main.java
 * youtube video  https://youtu.be/WqQ3HZCI3nA
 */

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "../../../../../../Learn-Folder-Updated-2020.03.02/Learn/Simple Libraries/Sensor/liblsm9ds1/lsm9ds1.h"
#include "../pic32mk_mcj_curiosity_pro.X/MadgwickAHRS/MadgwickAHRS.h"
#include "../pic32mk_mcj_curiosity_pro.X/MahonyAHRS/MahonyAHRS.h"

#define rps	0.0174532925f  // degrees per second -> radians per second

char cbuffer[256] = "\r\n parallax LSM9DS1 9-axis IMU ";
const char imu_missing[] = " MISSING \r\n";
int gx, gy, gz, ax, ay, az, mx, my, mz;

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main(void)
{
	/* Initialize all modules */
	SYS_Initialize(NULL);


	/* Start system tick timer */
	CORETIMER_Start();
	/*
	 * talk to the parallax LSM9DS1 9-axis IMU
	 */

	UART1_Write((uint8_t *) cbuffer, strlen(cbuffer));
	if (!imu_init(1, 2, 3, 4)) {
		// Trouble in River-City, not talking to the IMU
		UART1_Write((uint8_t *) imu_missing, strlen(imu_missing));
	} else {
		imu_calibrateAG();
		//imu_calibrateMag();
	};

	while (true) {
		dtog_Set();
		if (imu_gyroAvailable()) imu_readGyro(&gx, &gy, &gz);
		if (imu_accelAvailable()) imu_readAccel(&ax, &ay, &az);
		if (imu_magAvailable()) imu_readMag(&mx, &my, &mz);
		/* Toggle LED after every 1s */
		/*
		 * GYRO data must be in radians per second
		 */
		MadgwickAHRSupdate((float) gx*rps, (float) gy*rps, (float) gz*rps, (float) ax, (float) ay, (float) az, (float) mx, (float) my, (float) mz);
		//MahonyAHRSupdate((float) gx*rps, (float) gy*rps, (float) gz*rps, (float) ax, (float) ay, (float) az, (float) mx, (float) my, (float) mz);
		dtog_Clear();
		//		sprintf(cbuffer, "Gyro %6d %6d %6d Accel %6d %6d %6d Mag %6d %6d %6d \r\n", gx, gy, gz, ax, ay, az, mx, my, mz);
		//		UART1_Write((uint8_t *) cbuffer, strlen(cbuffer));
		sprintf(cbuffer, "%2.7f %2.7f %2.7f %2.7f\n\r", q0, q1, q2, q3);
		UART1_Write((uint8_t *) cbuffer, strlen(cbuffer));
		LED_Toggle();
		CORETIMER_DelayMs(100); // 10 Hz updates
	}

	/* Execution should not come here during normal operation */

	return( EXIT_FAILURE);
}


/*******************************************************************************
 End of File
 */

