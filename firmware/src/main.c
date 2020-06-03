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

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <stdio.h>
#include <string.h>
#include "definitions.h"                // SYS function prototypes
#include "m35qei.h"
#include "config/default/peripheral/uart/plib_uart3.h"


extern QEI_DATA m35_1;

/* redirect of printf to uart3 */

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main(void)
{
	char strbuf[80];
	/* Initialize all modules */
	SYS_Initialize(NULL);

	QEI1_Start();
	m35_1.update = 0;
	LATGbits.LATG12 = true;
	LATGbits.LATG13 = true;
	LATGbits.LATG14 = true;
	while (true) {
		/* Maintain state machines of all polled MPLAB Harmony modules. */
		SYS_Tasks();

		/* update local value of the encoder position counter */
		m35_1.pos = POS1CNT;
		m35_1.vel = VEL1CNT;

		if (m35_1.update++ > 20480) {
			/* flash the board led(s) using the position counter bits */
			LATGbits.LATG12 = m35_1.pos >> 10;
			LATGbits.LATG13 = m35_1.pos >> 12;
			LATGbits.LATG14 = m35_1.pos >> 14;
			/* send to uart3 the current QEI values */
			sprintf(strbuf, "c %7i:v %4i\r\n", m35_1.pos, m35_1.vel);
			UART3_Write((uint8_t*)strbuf, strlen(strbuf));
			m35_1.update = 0;
		}
	}

	/* Execution should not come here during normal operation */

	return( EXIT_FAILURE);
}


/*******************************************************************************
 End of File
 */

