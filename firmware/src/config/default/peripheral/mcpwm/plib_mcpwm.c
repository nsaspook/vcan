/*******************************************************************************
  Motor Control PWM (MCPWM) Peripheral Library (PLIB)

  Company:
    Microchip Technology Inc.

  File Name:
    plib_mcpwm.c

  Summary:
    MCPWM Source File

  Description:
    None

*******************************************************************************/

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
#include "device.h"
#include "plib_mcpwm.h"
#include "interrupts.h"

// *****************************************************************************

// *****************************************************************************
// Section: MCPWM Implementation
// *****************************************************************************
// *****************************************************************************
volatile static MCPWM_CH_OBJECT mcpwmObj[12];

void MCPWM_Initialize (void)
{
    /* PTCON register  */
    /*  SEVTPS  = 0 */
    /*  PCLKDIV = 0 */
    /*  SEIEN   = false */
    PTCON = 0x0;

    /* STCON register  */
    /*  SEVTPS  = 0 */
    /*  SCLKDIV = 0 */
    /*  SSEIEN = false */
    STCON = 0x0;

    PTPER = 12000;
    STPER = 2000;
    SEVTCMP = 0;
    SSEVTCMP = 10;

    /*********** Channel 1 Configurations **********/
    /* PWMCON1 register  */
    /*  MTBS   = 0 */
    /*  PTDIR  =  0 */
    /*  ECAM   =  1 */
    /*  DTCP   =  0 */
    /*  DTC    =  2 */
    /*  ITB    = 0 */
    /*  PWMHIEN =  false */
    /*  PWMLIEN = false */
    /*  TRGIEN = false */
    /*  CLIEN = false */
    /*  FLTIEN = true */
    PWMCON1 = 0x800480;

    /* IOCON1 register  */
    /*  SWAP    = 0*/
    /*  PMOD    = 0*/
    /*  POLH    = 0*/
    /*  POLL    = 0*/
    /*  FLTDAT  = 0b00 */
    /*  FLTMOD  = 1 */
    /*  PENH  = 1 */
    /*  PENL  = 1 */
    /*  FLTPOL  = 1  */
    /*  FLTSRC  = 4  */
    /*  CLDAT  = 0b00 */
    /*  CLMOD  = 1 */
    /*  CLPOL  = 1  */
    /*  CLSRC  = 4  */
    IOCON1 = 0x1325c000;

    PDC1 = 2000;
    SDC1 = 500;
    PHASE1 = 0;

    /* Dead Time */
    DTR1 = 300;
    ALTDTR1 = 300;

    /* Trigger Generator */
    TRGCON1 = 0x400;
    TRIG1 = 11990;
    STRIG1 = 0;

    /* leading edge blanking */
    /* LEBCON1 register  */
    /*  CLLEBEN    = false  */
    /*  FLTLEBEN   = false */
    /*  PLF        = 0  */
    /*  PLR        = 0  */
    /*  PHF        = 0  */
    /*  PHR        = 0  */
    LEBCON1 = 0x0;
    LEBDLY1 = 10;

    /* Enable interrupt */
    IEC5SET = _IEC5_PWM1IE_MASK;
    mcpwmObj[0].callback = NULL;

    /*********** Channel 2 Configurations **********/
    /* PWMCON2 register  */
    /*  MTBS   = 0 */
    /*  PTDIR  =  0 */
    /*  ECAM   =  1 */
    /*  DTCP   =  0 */
    /*  DTC    =  2 */
    /*  ITB    = 0 */
    /*  PWMHIEN =  false */
    /*  PWMLIEN = false */
    /*  TRGIEN = false */
    /*  CLIEN = false */
    /*  FLTIEN = true */
    PWMCON2 = 0x800480;

    /* IOCON2 register  */
    /*  SWAP    = 0*/
    /*  PMOD    = 0*/
    /*  POLH    = 0*/
    /*  POLL    = 0*/
    /*  FLTDAT  = 0b00 */
    /*  FLTMOD  = 1 */
    /*  PENH  = 1 */
    /*  PENL  = 1 */
    /*  FLTPOL  = 1  */
    /*  FLTSRC  = 4  */
    /*  CLDAT  = 0b00 */
    /*  CLMOD  = 1 */
    /*  CLPOL  = 1  */
    /*  CLSRC  = 4  */
    IOCON2 = 0x1325c000;

    PDC2 = 2000;
    SDC2 = 500;
    PHASE2 = 0;

    /* Dead Time */
    DTR2 = 300;
    ALTDTR2 = 300;

    /* Trigger Generator */
    TRGCON2 = 0x400;
    TRIG2 = 10;
    STRIG2 = 0;

    /* leading edge blanking */
    /* LEBCON2 register  */
    /*  CLLEBEN    = false  */
    /*  FLTLEBEN   = false */
    /*  PLF        = 0  */
    /*  PLR        = 0  */
    /*  PHF        = 0  */
    /*  PHR        = 0  */
    LEBCON2 = 0x0;
    LEBDLY2 = 10;

    /* Enable interrupt */
    IEC5SET = _IEC5_PWM2IE_MASK;
    mcpwmObj[1].callback = NULL;

    /*********** Channel 3 Configurations **********/
    /* PWMCON3 register  */
    /*  MTBS   = 0 */
    /*  PTDIR  =  0 */
    /*  ECAM   =  1 */
    /*  DTCP   =  0 */
    /*  DTC    =  2 */
    /*  ITB    = 0 */
    /*  PWMHIEN =  false */
    /*  PWMLIEN = false */
    /*  TRGIEN = false */
    /*  CLIEN = false */
    /*  FLTIEN = true */
    PWMCON3 = 0x800480;

    /* IOCON3 register  */
    /*  SWAP    = 0*/
    /*  PMOD    = 0*/
    /*  POLH    = 0*/
    /*  POLL    = 0*/
    /*  FLTDAT  = 0b00 */
    /*  FLTMOD  = 1 */
    /*  PENH  = 1 */
    /*  PENL  = 1 */
    /*  FLTPOL  = 1  */
    /*  FLTSRC  = 5  */
    /*  CLDAT  = 0b00 */
    /*  CLMOD  = 1 */
    /*  CLPOL  = 1  */
    /*  CLSRC  = 5  */
    IOCON3 = 0x172dc000;

    PDC3 = 2000;
    SDC3 = 500;
    PHASE3 = 0;

    /* Dead Time */
    DTR3 = 300;
    ALTDTR3 = 300;

    /* Trigger Generator */
    TRGCON3 = 0x400;
    TRIG3 = 11990;
    STRIG3 = 0;

    /* leading edge blanking */
    /* LEBCON3 register  */
    /*  CLLEBEN    = false  */
    /*  FLTLEBEN   = false */
    /*  PLF        = 0  */
    /*  PLR        = 0  */
    /*  PHF        = 0  */
    /*  PHR        = 0  */
    LEBCON3 = 0x0;
    LEBDLY3 = 10;

    /* Enable interrupt */
    IEC5SET = _IEC5_PWM3IE_MASK;
    mcpwmObj[2].callback = NULL;

    /*********** Channel 4 Configurations **********/
    /* PWMCON4 register  */
    /*  MTBS   = 0 */
    /*  PTDIR  =  0 */
    /*  ECAM   =  1 */
    /*  DTCP   =  0 */
    /*  DTC    =  2 */
    /*  ITB    = 0 */
    /*  PWMHIEN =  false */
    /*  PWMLIEN = false */
    /*  TRGIEN = false */
    /*  CLIEN = false */
    /*  FLTIEN = true */
    PWMCON4 = 0x800480;

    /* IOCON4 register  */
    /*  SWAP    = 0*/
    /*  PMOD    = 0*/
    /*  POLH    = 0*/
    /*  POLL    = 0*/
    /*  FLTDAT  = 0b00 */
    /*  FLTMOD  = 1 */
    /*  PENH  = 1 */
    /*  PENL  = 1 */
    /*  FLTPOL  = 1  */
    /*  FLTSRC  = 5  */
    /*  CLDAT  = 0b00 */
    /*  CLMOD  = 1 */
    /*  CLPOL  = 1  */
    /*  CLSRC  = 5  */
    IOCON4 = 0x172dc000;

    PDC4 = 2000;
    SDC4 = 500;
    PHASE4 = 0;

    /* Dead Time */
    DTR4 = 300;
    ALTDTR4 = 300;

    /* Trigger Generator */
    TRGCON4 = 0x400;
    TRIG4 = 11990;
    STRIG4 = 0;

    /* leading edge blanking */
    /* LEBCON4 register  */
    /*  CLLEBEN    = false  */
    /*  FLTLEBEN   = false */
    /*  PLF        = 0  */
    /*  PLR        = 0  */
    /*  PHF        = 0  */
    /*  PHR        = 0  */
    LEBCON4 = 0x0;
    LEBDLY4 = 10;

    /* Enable interrupt */
    IEC5SET = _IEC5_PWM4IE_MASK;
    mcpwmObj[3].callback = NULL;

}


void MCPWM_Start(void)
{
    /* Enable MCPWM module */
    PTCONbits.PTEN = 0x1;
}

void MCPWM_Stop(void)
{
    /* Disable MCPWM module */
    PTCONbits.PTEN = 0x0;
}

void MCPWM_PrimaryPeriodSet(uint16_t period)
{
    PTPER = period;
}

uint16_t MCPWM_PrimaryPeriodGet(void)
{
    return (uint16_t)PTPER;
}


void MCPWM_SecondaryPeriodSet(uint16_t period)
{
    STPER = period;
}

uint16_t MCPWM_SecondaryPeriodGet(void)
{
    return (uint16_t)STPER;
}

void MCPWM_ChannelPrimaryDutySet(MCPWM_CH_NUM channel, uint16_t duty)
{
    *(&PDC1 + (0x40U * (channel))) = duty;
}

void MCPWM_ChannelSecondaryDutySet(MCPWM_CH_NUM channel, uint16_t duty)
{
    *(&SDC1 + (0x40U * (channel))) = duty;
}

void MCPWM_ChannelDeadTimeSet(MCPWM_CH_NUM channel, uint16_t high_deadtime, uint16_t low_deadtime)
{
    *(&DTR1 + (0x40U * (channel))) = ((uint32_t)high_deadtime & (uint32_t)0x3FFFU);
    *(&ALTDTR1 + (0x40U * (channel))) = ((uint32_t)low_deadtime & (uint32_t)0x3FFFU);
}

void MCPWM_ChannelPrimaryTriggerSet(MCPWM_CH_NUM channel, uint16_t trigger)
{
    *(&TRIG1 + (0x40U * (channel))) = trigger;
}

void MCPWM_ChannelSecondaryTriggerSet(MCPWM_CH_NUM channel, uint16_t trigger)
{
    *(&STRIG1 + (0x40U * (channel))) = trigger;
}

void MCPWM_ChannelLeadingEdgeBlankingDelaySet(MCPWM_CH_NUM channel, uint16_t delay)
{
    *(&LEBDLY1 + (0x40U * (channel))) = delay;
}

void MCPWM_ChannelPinsOverrideEnable(MCPWM_CH_NUM channel)
{
    *(&IOCON1 + (0x40U * (channel))) |= _IOCON1_OVRENL_MASK | _IOCON1_OVRENH_MASK;
}

void MCPWM_ChannelPinsOverrideDisable(MCPWM_CH_NUM channel)
{
    *(&IOCON1 + (0x40U * (channel))) &= ~(_IOCON1_OVRENL_MASK | _IOCON1_OVRENH_MASK);
}

void MCPWM_ChannelPinsOwnershipEnable(MCPWM_CH_NUM channel)
{
    *(&IOCON1 + (0x40U * (channel))) |= _IOCON1_PENH_MASK | _IOCON1_PENL_MASK;
}

void MCPWM_ChannelPinsOwnershipDisable(MCPWM_CH_NUM channel)
{
    *(&IOCON1 + (0x40U * (channel))) &= ~(_IOCON1_PENH_MASK | _IOCON1_PENL_MASK);
}



void __attribute__((used)) PWM1_InterruptHandler(void)
{
    uint32_t tmp;
    uintptr_t context = mcpwmObj[0].context;
    uint32_t status = PWMCON1 & MCPWM_STATUS_MASK;

    tmp = PWMCON1bits.PWMHIF;
    if (((PWMCON1bits.PWMHIEN) != 0U) && (tmp != 0U))
    {
        PWMCON1bits.PWMHIF = 0;
    }

    tmp = PWMCON1bits.PWMLIF;
    if (((PWMCON1bits.PWMLIEN) != 0U) && (tmp != 0U))
    {
        PWMCON1bits.PWMLIF = 0;
    }

    tmp = PWMCON1bits.TRGIF;
    if (((PWMCON1bits.TRGIEN) != 0U) && (tmp != 0U))
    {
        PWMCON1bits.TRGIF = 0;
    }

    tmp = PWMCON1bits.CLIF;
    if (((PWMCON1bits.CLIEN) != 0U) && (tmp != 0U))
    {
        PWMCON1bits.CLIEN = 0;
        PWMCON1bits.CLIF = 0;
    }

    tmp = PWMCON1bits.FLTIF;
    if (((PWMCON1bits.FLTIEN) != 0U) && (tmp != 0U))
    {
        PWMCON1bits.FLTIEN = 0;
        PWMCON1bits.FLTIF = 0;
    }

    IFS5CLR = _IFS5_PWM1IF_MASK;    //Clear IRQ flag

    PWMCON1bits.FLTIEN = 1;

    if( (mcpwmObj[0].callback != NULL))
    {
        mcpwmObj[0].callback((MCPWM_CH_STATUS)status, context);
    }
}

void __attribute__((used)) PWM2_InterruptHandler(void)
{
    uint32_t tmp;
    uintptr_t context = mcpwmObj[1].context;
    uint32_t status = PWMCON2 & MCPWM_STATUS_MASK;

    tmp = PWMCON2bits.PWMHIF;
    if (((PWMCON2bits.PWMHIEN) != 0U) && (tmp != 0U))
    {
        PWMCON2bits.PWMHIF = 0;
    }

    tmp = PWMCON2bits.PWMLIF;
    if (((PWMCON2bits.PWMLIEN) != 0U) && (tmp != 0U))
    {
        PWMCON2bits.PWMLIF = 0;
    }

    tmp = PWMCON2bits.TRGIF;
    if (((PWMCON2bits.TRGIEN) != 0U) && (tmp != 0U))
    {
        PWMCON2bits.TRGIF = 0;
    }

    tmp = PWMCON2bits.CLIF;
    if (((PWMCON2bits.CLIEN) != 0U) && (tmp != 0U))
    {
        PWMCON2bits.CLIEN = 0;
        PWMCON2bits.CLIF = 0;
    }

    tmp = PWMCON2bits.FLTIF;
    if (((PWMCON2bits.FLTIEN) != 0U) && (tmp != 0U))
    {
        PWMCON2bits.FLTIEN = 0;
        PWMCON2bits.FLTIF = 0;
    }

    IFS5CLR = _IFS5_PWM2IF_MASK;    //Clear IRQ flag

    PWMCON2bits.FLTIEN = 1;

    if( (mcpwmObj[1].callback != NULL))
    {
        mcpwmObj[1].callback((MCPWM_CH_STATUS)status, context);
    }
}

void __attribute__((used)) PWM3_InterruptHandler(void)
{
    uint32_t tmp;
    uintptr_t context = mcpwmObj[2].context;
    uint32_t status = PWMCON3 & MCPWM_STATUS_MASK;

    tmp = PWMCON3bits.PWMHIF;
    if (((PWMCON3bits.PWMHIEN) != 0U) && (tmp != 0U))
    {
        PWMCON3bits.PWMHIF = 0;
    }

    tmp = PWMCON3bits.PWMLIF;
    if (((PWMCON3bits.PWMLIEN) != 0U) && (tmp != 0U))
    {
        PWMCON3bits.PWMLIF = 0;
    }

    tmp = PWMCON3bits.TRGIF;
    if (((PWMCON3bits.TRGIEN) != 0U) && (tmp != 0U))
    {
        PWMCON3bits.TRGIF = 0;
    }

    tmp = PWMCON3bits.CLIF;
    if (((PWMCON3bits.CLIEN) != 0U) && (tmp != 0U))
    {
        PWMCON3bits.CLIEN = 0;
        PWMCON3bits.CLIF = 0;
    }

    tmp = PWMCON3bits.FLTIF;
    if (((PWMCON3bits.FLTIEN) != 0U) && (tmp != 0U))
    {
        PWMCON3bits.FLTIEN = 0;
        PWMCON3bits.FLTIF = 0;
    }

    IFS5CLR = _IFS5_PWM3IF_MASK;    //Clear IRQ flag

    PWMCON3bits.FLTIEN = 1;

    if( (mcpwmObj[2].callback != NULL))
    {
        mcpwmObj[2].callback((MCPWM_CH_STATUS)status, context);
    }
}

void __attribute__((used)) PWM4_InterruptHandler(void)
{
    uint32_t tmp;
    uintptr_t context = mcpwmObj[3].context;
    uint32_t status = PWMCON4 & MCPWM_STATUS_MASK;

    tmp = PWMCON4bits.PWMHIF;
    if (((PWMCON4bits.PWMHIEN) != 0U) && (tmp != 0U))
    {
        PWMCON4bits.PWMHIF = 0;
    }

    tmp = PWMCON4bits.PWMLIF;
    if (((PWMCON4bits.PWMLIEN) != 0U) && (tmp != 0U))
    {
        PWMCON4bits.PWMLIF = 0;
    }

    tmp = PWMCON4bits.TRGIF;
    if (((PWMCON4bits.TRGIEN) != 0U) && (tmp != 0U))
    {
        PWMCON4bits.TRGIF = 0;
    }

    tmp = PWMCON4bits.CLIF;
    if (((PWMCON4bits.CLIEN) != 0U) && (tmp != 0U))
    {
        PWMCON4bits.CLIEN = 0;
        PWMCON4bits.CLIF = 0;
    }

    tmp = PWMCON4bits.FLTIF;
    if (((PWMCON4bits.FLTIEN) != 0U) && (tmp != 0U))
    {
        PWMCON4bits.FLTIEN = 0;
        PWMCON4bits.FLTIF = 0;
    }

    IFS5CLR = _IFS5_PWM4IF_MASK;    //Clear IRQ flag

    PWMCON4bits.FLTIEN = 1;

    if( (mcpwmObj[3].callback != NULL))
    {
        mcpwmObj[3].callback((MCPWM_CH_STATUS)status, context);
    }
}


void MCPWM_CallbackRegister(MCPWM_CH_NUM channel, MCPWM_CH_CALLBACK callback, uintptr_t context)
{
    mcpwmObj[channel].callback = callback;
    mcpwmObj[channel].context = context;
}
