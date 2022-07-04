/*******************************************************************************
  EVIC PLIB Implementation

  Company:
    Microchip Technology Inc.

  File Name:
    plib_evic.c

  Summary:
    EVIC PLIB Source File

  Description:
    None

*******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries.
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

#include "device.h"
#include "plib_evic.h"


EXT_INT_PIN_CALLBACK_OBJ extInt0CbObj;
// *****************************************************************************
// *****************************************************************************
// Section: IRQ Implementation
// *****************************************************************************
// *****************************************************************************

void EVIC_Initialize( void )
{
    INTCONSET = _INTCON_MVEC_MASK;

    /* Set up priority and subpriority of enabled interrupts */
    IPC0SET = 0x4 | 0x0;  /* CORE_TIMER:  Priority 1 / Subpriority 0 */
    IPC0SET = 0xc000000 | 0x0;  /* EXTERNAL_0:  Priority 3 / Subpriority 0 */
    IPC1SET = 0x8 | 0x0;  /* TIMER_1:  Priority 2 / Subpriority 0 */
    IPC2SET = 0x1c00 | 0x200;  /* TIMER_2:  Priority 7 / Subpriority 2 */
    IPC3SET = 0x40000 | 0x0;  /* TIMER_3:  Priority 1 / Subpriority 0 */
    IPC14SET = 0xc | 0x0;  /* UART2_FAULT:  Priority 3 / Subpriority 0 */
    IPC14SET = 0xc00 | 0x0;  /* UART2_RX:  Priority 3 / Subpriority 0 */
    IPC14SET = 0xc0000 | 0x0;  /* UART2_TX:  Priority 3 / Subpriority 0 */
    IPC15SET = 0xc0000 | 0x0;  /* UART3_FAULT:  Priority 3 / Subpriority 0 */
    IPC15SET = 0xc000000 | 0x0;  /* UART3_RX:  Priority 3 / Subpriority 0 */
    IPC16SET = 0xc | 0x0;  /* UART3_TX:  Priority 3 / Subpriority 0 */
    IPC18SET = 0x8 | 0x1;  /* DMA0:  Priority 2 / Subpriority 1 */
    IPC18SET = 0x800 | 0x200;  /* DMA1:  Priority 2 / Subpriority 2 */
    IPC18SET = 0x80000 | 0x30000;  /* DMA2:  Priority 2 / Subpriority 3 */
    IPC19SET = 0x8 | 0x1;  /* TIMER_6:  Priority 2 / Subpriority 1 */
    IPC25SET = 0x400 | 0x0;  /* ADC_EOS:  Priority 1 / Subpriority 0 */
    IPC27SET = 0x1800 | 0x0;  /* ADC_DATA3:  Priority 6 / Subpriority 0 */
    IPC41SET = 0xc | 0x0;  /* UART6_FAULT:  Priority 3 / Subpriority 0 */
    IPC41SET = 0xc00 | 0x0;  /* UART6_RX:  Priority 3 / Subpriority 0 */
    IPC41SET = 0xc0000 | 0x0;  /* UART6_TX:  Priority 3 / Subpriority 0 */
    IPC42SET = 0xc00 | 0x0;  /* QEI1:  Priority 3 / Subpriority 0 */
    IPC42SET = 0xc0000 | 0x0;  /* QEI2:  Priority 3 / Subpriority 0 */
    IPC47SET = 0x400 | 0x0;  /* QEI3:  Priority 1 / Subpriority 0 */
    IPC54SET = 0x4000000 | 0x0;  /* SPI3_RX:  Priority 1 / Subpriority 0 */
    IPC55SET = 0x4 | 0x0;  /* SPI3_TX:  Priority 1 / Subpriority 0 */

    /* Initialize External interrupt 0 callback object */
    extInt0CbObj.callback = NULL;


    /* Configure Shadow Register Set */
    PRISS = 0x76543210;

    while (PRISS != 0x76543210)
    {
        /* Wait for PRISS value to take effect */
    }
}

void EVIC_SourceEnable( INT_SOURCE source )
{
    volatile uint32_t *IECx = (volatile uint32_t *) (&IEC0 + ((0x10 * (source / 32)) / 4));
    volatile uint32_t *IECxSET = (volatile uint32_t *)(IECx + 2);

    *IECxSET = 1 << (source & 0x1f);
}

void EVIC_SourceDisable( INT_SOURCE source )
{
    volatile uint32_t *IECx = (volatile uint32_t *) (&IEC0 + ((0x10 * (source / 32)) / 4));
    volatile uint32_t *IECxCLR = (volatile uint32_t *)(IECx + 1);

    *IECxCLR = 1 << (source & 0x1f);
}

bool EVIC_SourceIsEnabled( INT_SOURCE source )
{
    volatile uint32_t *IECx = (volatile uint32_t *) (&IEC0 + ((0x10 * (source / 32)) / 4));

    return (bool)((*IECx >> (source & 0x1f)) & 0x01);
}

bool EVIC_SourceStatusGet( INT_SOURCE source )
{
    volatile uint32_t *IFSx = (volatile uint32_t *)(&IFS0 + ((0x10 * (source / 32)) / 4));

    return (bool)((*IFSx >> (source & 0x1f)) & 0x1);
}

void EVIC_SourceStatusSet( INT_SOURCE source )
{
    volatile uint32_t *IFSx = (volatile uint32_t *) (&IFS0 + ((0x10 * (source / 32)) / 4));
    volatile uint32_t *IFSxSET = (volatile uint32_t *)(IFSx + 2);

    *IFSxSET = 1 << (source & 0x1f);
}

void EVIC_SourceStatusClear( INT_SOURCE source )
{
    volatile uint32_t *IFSx = (volatile uint32_t *) (&IFS0 + ((0x10 * (source / 32)) / 4));
    volatile uint32_t *IFSxCLR = (volatile uint32_t *)(IFSx + 1);

    *IFSxCLR = 1 << (source & 0x1f);
}

void EVIC_INT_Enable( void )
{
    __builtin_enable_interrupts();
}

bool EVIC_INT_Disable( void )
{
    uint32_t processorStatus;

    /* Save the processor status and then Disable the global interrupt */
    processorStatus = ( uint32_t )__builtin_disable_interrupts();

    /* return the interrupt status */
    return (bool)(processorStatus & 0x01);
}

void EVIC_INT_Restore( bool state )
{
    if (state)
    {
        /* restore the state of CP0 Status register before the disable occurred */
        __builtin_enable_interrupts();
    }
}

void EVIC_ExternalInterruptEnable( EXTERNAL_INT_PIN extIntPin )
{
    IEC0SET = extIntPin;
}

void EVIC_ExternalInterruptDisable( EXTERNAL_INT_PIN extIntPin )
{
    IEC0CLR = extIntPin;
}

bool EVIC_ExternalInterruptCallbackRegister(
    EXTERNAL_INT_PIN extIntPin,
    const EXTERNAL_INT_PIN_CALLBACK callback,
    uintptr_t context
)
{
    bool status = true;
    switch  (extIntPin)
        {
        case EXTERNAL_INT_0:
            extInt0CbObj.callback = callback;
            extInt0CbObj.context  = context;
            break;
        default:
            status = false;
            break;
        }

    return status;
}


// *****************************************************************************
/* Function:
    void EXTERNAL_0_InterruptHandler(void)

  Summary:
    Interrupt Handler for External Interrupt pin 0.

  Remarks:
	It is an internal function called from ISR, user should not call it directly.
*/
void EXTERNAL_0_InterruptHandler(void)
{
    IFS0CLR = _IFS0_INT0IF_MASK;

    if(extInt0CbObj.callback != NULL)
    {
        extInt0CbObj.callback (EXTERNAL_INT_0, extInt0CbObj.context);
    }
}


/* End of file */