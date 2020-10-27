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
#include "imu.h"
#include "../../../../../../Learn-Folder-Updated-2020.03.02/Learn/Simple Libraries/Sensor/liblsm9ds1/lsm9ds1.h"
#include "../pic32mk_mcj_curiosity_pro.X/MadgwickAHRS/MadgwickAHRS.h"
#include "../pic32mk_mcj_curiosity_pro.X/MahonyAHRS/MahonyAHRS.h"

#define rps	0.0174532925f  // degrees per second -> radians per second
#define NVM_STARTVADDRESS	0x9d070000  // virtual address
#define NVM_STARTPADDRESS	0x1d070000  // physical address

const uint32_t myflash[256] __attribute__((section("myflash"), address(NVM_STARTVADDRESS), space(prog)));
uint32_t *pmyflash = (uint32_t *) NVM_STARTPADDRESS;

char cbuffer[256] = "\r\n parallax LSM9DS1 9-axis IMU ";
const char imu_missing[] = " MISSING \r\n";
int gx, gy, gz, ax, ay, az, mx, my, mz;

double g[] = {0.0, 0.0, 0.0}, accel[] = {0.0, 0.0, 0.0};

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
		if (!SWITCH_Get()) {
			imu_calibrateAG();
			imu_calibrateMag();
		}
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
		/*
		 * linear acceleration without gravity
		 * rotate vector to earth
		 */
		g[0] = 2.0 * (q1 * q3 - q0 * q2);
		g[1] = 2.0 * (q0 * q1 + q2 * q3);
		g[2] = q0 * q0 - q1 * q1 - q2 * q2 + q3 * q3;

		/*
		 * compensate accelerometer readings with the expected direction of gravity 
		 * https://diydrones.com/forum/topics/accelerometer-sensor-gravity-compensation
		 */
		accel[0] = ((double) ax / 5020.0 - g[0])*9.8;
		accel[1] = ((double) ay / 5020.0 - g[1])*9.8;
		accel[2] = ((double) az / 5020.0 - g[2])*9.8;
		dtog_Clear();
		//		sprintf(cbuffer, "Gyro %6d %6d %6d Accel %6d %6d %6d Mag %6d %6d %6d \r\n", gx, gy, gz, ax, ay, az, mx, my, mz);
		//		UART1_Write((uint8_t *) cbuffer, strlen(cbuffer));
		sprintf(cbuffer, "%2.7f %2.7f %2.7f %2.7f ", q0, q1, q2, q3);
		UART1_Write((uint8_t *) cbuffer, strlen(cbuffer));
		sprintf(cbuffer, "%3.2f %3.2f %3.2f\n\r", accel[0], accel[1], accel[2]);
		UART1_Write((uint8_t *) cbuffer, strlen(cbuffer));
		//		sprintf(cbuffer, "Linear R acceleration %5.2f %5.2f %5.2f: %5.2f %5.2f %5.2f\n\r", (double) ax, (double) ay, (double) az, accel[0], accel[1], accel[2]);
		//		UART1_Write((uint8_t *) cbuffer, strlen(cbuffer));
		LED_Toggle();
		CORETIMER_DelayMs(100); // 10 Hz updates
	}

	/* Execution should not come here during normal operation */

	return( EXIT_FAILURE);
}

static void NVMInitiateOperation(void)
{
	unsigned int saved_state;
	int dma_susp; // storage for current DMA state

	saved_state = __builtin_get_isr_state();
	__builtin_disable_interrupts();
	// Disable DMA
	if (!(dma_susp = DMACONbits.SUSPEND)) {
		DMACONSET = _DMACON_SUSPEND_MASK; // suspend
		while ((DMACONbits.DMABUSY)); // wait to be actually suspended
	}
	NVMKEY = 0x0;
	NVMKEY = 0xAA996655;
	NVMKEY = 0x556699AA;
	NVMCONSET = 1 << 15; // must be an atomic instruction
	// Restore DMA
	if (!dma_susp) {
		DMACONCLR = _DMACON_SUSPEND_MASK; // resume DMA activity
	}
	// Restore Interrupts
	__builtin_set_isr_state(saved_state); /* Set back to what was before. */
}

static unsigned int NVMWriteWord(void* address, unsigned int data)
{
	unsigned int res = 0;
	// Load data into NVMDATA register
	NVMDATA0 = data;
	// Load address to program into NVMADDR register
	NVMADDR = (unsigned int) address;
	// Unlock and Write Word
	// set the operation, assumes WREN = 0
	NVMCONbits.NVMOP = 0x1; // NVMOP for Word programming
	// Enable Flash for write operation and set the NVMOP
	NVMCONbits.WREN = 1;
	// Start programming
	NVMInitiateOperation(); // see Example 52-1
	// Wait for WR bit to clear
	while (NVMCONbits.WR);
	// Disable future Flash Write/Erase operations
	NVMCONbits.WREN = 0;
	// Check Error Status
	if (NVMCON & 0x3000) // mask for WRERR and LVDERR
	{
		res = 1; // TESTING CLEAR POSSIBLE ERROR set 0
	}
	return res;
}

/*
 * read data from the virtual program address of the nvram variable
 */
uint32_t nvram_in(uint8_t adr)
{
	return myflash[adr];
}

/*
 * write data to the physical address of the nvram variable
 * using the flash unlock sequence
 */
uint32_t nvram_out(void *adr, uint32_t data)
{
	return NVMWriteWord((void*) adr, data);
}

/*
 * a few calibrations data specific sized read/write routine
 */

bool get_nvram_str(uint8_t adr, char * str)
{
	bool done = true;
	uint8_t sz = 7;

	while (sz--) {
		str[sz] = (char) nvram_in(adr + sz);
	}
	return done;
}

bool set_nvram_str(uint32_t * adr, char * str)
{
	bool done = true;
	uint8_t sz = 7;

	while (sz--) {
		if ((done = NVMWriteWord((void *) &adr[sz], (uint32_t) str[sz]))) {
			break; // stop on error
		}
	}
	return done;
}

/*******************************************************************************
 End of File
 */

