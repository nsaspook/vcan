/*******************************************************************************
 System Interrupts File

  Company:
    Microchip Technology Inc.

  File Name:
    interrupt.c

  Summary:
    Interrupt vectors mapping

  Description:
    This file maps all the interrupt vectors to their corresponding
    implementations. If a particular module interrupt is used, then its ISR
    definition can be found in corresponding PLIB source file. If a module
    interrupt is not used, then its ISR implementation is mapped to dummy
    handler.
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

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "interrupts.h"
#include "definitions.h"

#include "../../adc_scan.h"

// *****************************************************************************
// *****************************************************************************
// Section: System Interrupt Vector Functions
// *****************************************************************************
// *****************************************************************************


void CORE_TIMER_InterruptHandler( void );
void EXTERNAL_0_InterruptHandler( void );
void TIMER_1_InterruptHandler( void );
void TIMER_2_InterruptHandler( void );
void TIMER_3_InterruptHandler( void );
void CHANGE_NOTICE_B_InterruptHandler( void );
void UART2_FAULT_InterruptHandler( void );
void UART2_RX_InterruptHandler( void );
void UART2_TX_InterruptHandler( void );
void UART3_FAULT_InterruptHandler( void );
void UART3_RX_InterruptHandler( void );
void UART3_TX_InterruptHandler( void );
void DMA0_InterruptHandler( void );
void TIMER_6_InterruptHandler( void );
void UART6_FAULT_InterruptHandler( void );
void UART6_RX_InterruptHandler( void );
void UART6_TX_InterruptHandler( void );
void SPI3_RX_InterruptHandler( void );
void SPI3_TX_InterruptHandler( void );



/* All the handlers are defined here.  Each will call its PLIB-specific function. */
void __ISR(_CORE_TIMER_VECTOR, ipl1SOFT) CORE_TIMER_Handler (void)
{
    CORE_TIMER_InterruptHandler();
}

void __ISR(_EXTERNAL_0_VECTOR, ipl3SOFT) EXTERNAL_0_Handler (void)
{
	EXTERNAL_0_InterruptHandler();
}

void __ISR(_TIMER_1_VECTOR, ipl1SOFT) TIMER_1_Handler (void)
{
	TIMER_1_InterruptHandler();
}

void __ISR(_TIMER_2_VECTOR, ipl7SRS) TIMER_2_Handler (void)
{
	TIMER_2_InterruptHandler();
}

void __ISR(_TIMER_3_VECTOR, ipl5SOFT) TIMER_3_Handler (void)
{
	TIMER_3_InterruptHandler();
}

void __ISR(_CHANGE_NOTICE_B_VECTOR, ipl1SOFT) CHANGE_NOTICE_B_Handler (void)
{
	CHANGE_NOTICE_B_InterruptHandler();
}

void __ISR(_UART2_FAULT_VECTOR, ipl1SOFT) UART2_FAULT_Handler (void)
{
	UART2_FAULT_InterruptHandler();
}

void __ISR(_UART2_RX_VECTOR, ipl1SOFT) UART2_RX_Handler (void)
{
	UART2_RX_InterruptHandler();
}

void __ISR(_UART2_TX_VECTOR, ipl1SOFT) UART2_TX_Handler (void)
{
	UART2_TX_InterruptHandler();
}

void __ISR(_UART3_FAULT_VECTOR, ipl1SOFT) UART3_FAULT_Handler (void)
{
	UART3_FAULT_InterruptHandler();
}

void __ISR(_UART3_RX_VECTOR, ipl1SOFT) UART3_RX_Handler (void)
{
	UART3_RX_InterruptHandler();
}

void __ISR(_UART3_TX_VECTOR, ipl1SOFT) UART3_TX_Handler (void)
{
	UART3_TX_InterruptHandler();
}

void __ISR(_DMA0_VECTOR, ipl1SOFT) DMA0_Handler (void)
{
    DMA0_InterruptHandler();
}

void __ISR(_TIMER_6_VECTOR, ipl1SOFT) TIMER_6_Handler (void)
{
	TIMER_6_InterruptHandler();
}

void __ISR(_ADC_EOS_VECTOR, ipl1SOFT) ADC_EOS_Handler (void)
{
	end_of_adc_scan();
}

void __ISR(_UART6_FAULT_VECTOR, ipl1SOFT) UART6_FAULT_Handler (void)
{
	UART6_FAULT_InterruptHandler();
}

void __ISR(_UART6_RX_VECTOR, ipl1SOFT) UART6_RX_Handler (void)
{
	UART6_RX_InterruptHandler();
}

void __ISR(_UART6_TX_VECTOR, ipl1SOFT) UART6_TX_Handler (void)
{
	UART6_TX_InterruptHandler();
}

void __ISR(_QEI1_VECTOR, ipl3SOFT) QEI1_Handler (void)
{
}

void __ISR(_QEI2_VECTOR, ipl3SOFT) QEI2_Handler (void)
{
}

void __ISR(_QEI3_VECTOR, ipl1SOFT) QEI3_Handler (void)
{
}

void __ISR(_SPI3_RX_VECTOR, ipl1SOFT) SPI3_RX_Handler (void)
{
	SPI3_RX_InterruptHandler();
}

void __ISR(_SPI3_TX_VECTOR, ipl1SOFT) SPI3_TX_Handler (void)
{
	SPI3_TX_InterruptHandler();
}




/*******************************************************************************
 End of File
 */
