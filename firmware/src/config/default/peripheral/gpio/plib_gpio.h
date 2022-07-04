/*******************************************************************************
  GPIO PLIB

  Company:
    Microchip Technology Inc.

  File Name:
    plib_gpio.h UUUUUUUUU

  Summary:
    GPIO PLIB Header File

  Description:
    This library provides an interface to control and interact with Parallel
    Input/Output controller (GPIO) module.

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

#ifndef PLIB_GPIO_H
#define PLIB_GPIO_H

#include <device.h>
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    extern "C" {

#endif
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Data types and constants
// *****************************************************************************
// *****************************************************************************


/*** Macros for FBB2 pin ***/
#define FBB2_Get()               ((PORTG >> 15) & 0x1U)
#define FBB2_PIN                  GPIO_PIN_RG15

/*** Macros for SPI_EN0 pin ***/
#define SPI_EN0_Set()               (LATDSET = (1U<<1))
#define SPI_EN0_Clear()             (LATDCLR = (1U<<1))
#define SPI_EN0_Toggle()            (LATDINV= (1U<<1))
#define SPI_EN0_OutputEnable()      (TRISDCLR = (1U<<1))
#define SPI_EN0_InputEnable()       (TRISDSET = (1U<<1))
#define SPI_EN0_Get()               ((PORTD >> 1) & 0x1U)
#define SPI_EN0_PIN                  GPIO_PIN_RD1

/*** Macros for SPI_EN1 pin ***/
#define SPI_EN1_Set()               (LATDSET = (1U<<2))
#define SPI_EN1_Clear()             (LATDCLR = (1U<<2))
#define SPI_EN1_Toggle()            (LATDINV= (1U<<2))
#define SPI_EN1_OutputEnable()      (TRISDCLR = (1U<<2))
#define SPI_EN1_InputEnable()       (TRISDSET = (1U<<2))
#define SPI_EN1_Get()               ((PORTD >> 2) & 0x1U)
#define SPI_EN1_PIN                  GPIO_PIN_RD2

/*** Macros for GPIO_RD4 pin ***/
#define GPIO_RD4_Set()               (LATDSET = (1U<<4))
#define GPIO_RD4_Clear()             (LATDCLR = (1U<<4))
#define GPIO_RD4_Toggle()            (LATDINV= (1U<<4))
#define GPIO_RD4_OutputEnable()      (TRISDCLR = (1U<<4))
#define GPIO_RD4_InputEnable()       (TRISDSET = (1U<<4))
#define GPIO_RD4_Get()               ((PORTD >> 4) & 0x1U)
#define GPIO_RD4_PIN                  GPIO_PIN_RD4

/*** Macros for RESET_LED pin ***/
#define RESET_LED_Set()               (LATGSET = (1U<<9))
#define RESET_LED_Clear()             (LATGCLR = (1U<<9))
#define RESET_LED_Toggle()            (LATGINV= (1U<<9))
#define RESET_LED_OutputEnable()      (TRISGCLR = (1U<<9))
#define RESET_LED_InputEnable()       (TRISGSET = (1U<<9))
#define RESET_LED_Get()               ((PORTG >> 9) & 0x1U)
#define RESET_LED_PIN                  GPIO_PIN_RG9

/*** Macros for GPIO_RG10 pin ***/
#define GPIO_RG10_Set()               (LATGSET = (1U<<10))
#define GPIO_RG10_Clear()             (LATGCLR = (1U<<10))
#define GPIO_RG10_Toggle()            (LATGINV= (1U<<10))
#define GPIO_RG10_OutputEnable()      (TRISGCLR = (1U<<10))
#define GPIO_RG10_InputEnable()       (TRISGSET = (1U<<10))
#define GPIO_RG10_Get()               ((PORTG >> 10) & 0x1U)
#define GPIO_RG10_PIN                  GPIO_PIN_RG10

/*** Macros for QEI1_E0 pin ***/
#define QEI1_E0_Set()               (LATESET = (1U<<8))
#define QEI1_E0_Clear()             (LATECLR = (1U<<8))
#define QEI1_E0_Toggle()            (LATEINV= (1U<<8))
#define QEI1_E0_OutputEnable()      (TRISECLR = (1U<<8))
#define QEI1_E0_InputEnable()       (TRISESET = (1U<<8))
#define QEI1_E0_Get()               ((PORTE >> 8) & 0x1U)
#define QEI1_E0_PIN                  GPIO_PIN_RE8

/*** Macros for QEI2_E0 pin ***/
#define QEI2_E0_Set()               (LATESET = (1U<<9))
#define QEI2_E0_Clear()             (LATECLR = (1U<<9))
#define QEI2_E0_Toggle()            (LATEINV= (1U<<9))
#define QEI2_E0_OutputEnable()      (TRISECLR = (1U<<9))
#define QEI2_E0_InputEnable()       (TRISESET = (1U<<9))
#define QEI2_E0_Get()               ((PORTE >> 9) & 0x1U)
#define QEI2_E0_PIN                  GPIO_PIN_RE9

/*** Macros for FAST_AN1 pin ***/
#define FAST_AN1_Get()               ((PORTA >> 1) & 0x1U)
#define FAST_AN1_PIN                  GPIO_PIN_RA1

/*** Macros for DEBUGB0 pin ***/
#define DEBUGB0_Set()               (LATBSET = (1U<<0))
#define DEBUGB0_Clear()             (LATBCLR = (1U<<0))
#define DEBUGB0_Toggle()            (LATBINV= (1U<<0))
#define DEBUGB0_OutputEnable()      (TRISBCLR = (1U<<0))
#define DEBUGB0_InputEnable()       (TRISBSET = (1U<<0))
#define DEBUGB0_Get()               ((PORTB >> 0) & 0x1U)
#define DEBUGB0_PIN                  GPIO_PIN_RB0

/*** Macros for FAST_AN3 pin ***/
#define FAST_AN3_Get()               ((PORTB >> 1) & 0x1U)
#define FAST_AN3_PIN                  GPIO_PIN_RB1

/*** Macros for GPIO_RB2 pin ***/
#define GPIO_RB2_Set()               (LATBSET = (1U<<2))
#define GPIO_RB2_Clear()             (LATBCLR = (1U<<2))
#define GPIO_RB2_Toggle()            (LATBINV= (1U<<2))
#define GPIO_RB2_OutputEnable()      (TRISBCLR = (1U<<2))
#define GPIO_RB2_InputEnable()       (TRISBSET = (1U<<2))
#define GPIO_RB2_Get()               ((PORTB >> 2) & 0x1U)
#define GPIO_RB2_PIN                  GPIO_PIN_RB2

/*** Macros for GPIO_RB3 pin ***/
#define GPIO_RB3_Set()               (LATBSET = (1U<<3))
#define GPIO_RB3_Clear()             (LATBCLR = (1U<<3))
#define GPIO_RB3_Toggle()            (LATBINV= (1U<<3))
#define GPIO_RB3_OutputEnable()      (TRISBCLR = (1U<<3))
#define GPIO_RB3_InputEnable()       (TRISBSET = (1U<<3))
#define GPIO_RB3_Get()               ((PORTB >> 3) & 0x1U)
#define GPIO_RB3_PIN                  GPIO_PIN_RB3

/*** Macros for BACKLIGHT pin ***/
#define BACKLIGHT_Set()               (LATCSET = (1U<<2))
#define BACKLIGHT_Clear()             (LATCCLR = (1U<<2))
#define BACKLIGHT_Toggle()            (LATCINV= (1U<<2))
#define BACKLIGHT_OutputEnable()      (TRISCCLR = (1U<<2))
#define BACKLIGHT_InputEnable()       (TRISCSET = (1U<<2))
#define BACKLIGHT_Get()               ((PORTC >> 2) & 0x1U)
#define BACKLIGHT_PIN                  GPIO_PIN_RC2

/*** Macros for DERE pin ***/
#define DERE_Set()               (LATGSET = (1U<<11))
#define DERE_Clear()             (LATGCLR = (1U<<11))
#define DERE_Toggle()            (LATGINV= (1U<<11))
#define DERE_OutputEnable()      (TRISGCLR = (1U<<11))
#define DERE_InputEnable()       (TRISGSET = (1U<<11))
#define DERE_Get()               ((PORTG >> 11) & 0x1U)
#define DERE_PIN                  GPIO_PIN_RG11

/*** Macros for FBB1 pin ***/
#define FBB1_Get()               ((PORTF >> 13) & 0x1U)
#define FBB1_PIN                  GPIO_PIN_RF13

/*** Macros for FBA1 pin ***/
#define FBA1_Get()               ((PORTF >> 12) & 0x1U)
#define FBA1_PIN                  GPIO_PIN_RF12

/*** Macros for PWMF5 pin ***/
#define PWMF5_Get()               ((PORTE >> 12) & 0x1U)
#define PWMF5_PIN                  GPIO_PIN_RE12

/*** Macros for PWMF6 pin ***/
#define PWMF6_Get()               ((PORTE >> 13) & 0x1U)
#define PWMF6_PIN                  GPIO_PIN_RE13

/*** Macros for FBA2 pin ***/
#define FBA2_Get()               ((PORTE >> 14) & 0x1U)
#define FBA2_PIN                  GPIO_PIN_RE14

/*** Macros for IN1 pin ***/
#define IN1_Set()               (LATDSET = (1U<<14))
#define IN1_Clear()             (LATDCLR = (1U<<14))
#define IN1_Toggle()            (LATDINV= (1U<<14))
#define IN1_OutputEnable()      (TRISDCLR = (1U<<14))
#define IN1_InputEnable()       (TRISDSET = (1U<<14))
#define IN1_Get()               ((PORTD >> 14) & 0x1U)
#define IN1_PIN                  GPIO_PIN_RD14

/*** Macros for IN2 pin ***/
#define IN2_Set()               (LATDSET = (1U<<15))
#define IN2_Clear()             (LATDCLR = (1U<<15))
#define IN2_Toggle()            (LATDINV= (1U<<15))
#define IN2_OutputEnable()      (TRISDCLR = (1U<<15))
#define IN2_InputEnable()       (TRISDSET = (1U<<15))
#define IN2_Get()               ((PORTD >> 15) & 0x1U)
#define IN2_PIN                  GPIO_PIN_RD15

/*** Macros for IN3 pin ***/
#define IN3_Set()               (LATASET = (1U<<8))
#define IN3_Clear()             (LATACLR = (1U<<8))
#define IN3_Toggle()            (LATAINV= (1U<<8))
#define IN3_OutputEnable()      (TRISACLR = (1U<<8))
#define IN3_InputEnable()       (TRISASET = (1U<<8))
#define IN3_Get()               ((PORTA >> 8) & 0x1U)
#define IN3_PIN                  GPIO_PIN_RA8

/*** Macros for PWMF15 pin ***/
#define PWMF15_Get()               ((PORTB >> 4) & 0x1U)
#define PWMF15_PIN                  GPIO_PIN_RB4

/*** Macros for U1_EN pin ***/
#define U1_EN_Set()               (LATESET = (1U<<0))
#define U1_EN_Clear()             (LATECLR = (1U<<0))
#define U1_EN_Toggle()            (LATEINV= (1U<<0))
#define U1_EN_OutputEnable()      (TRISECLR = (1U<<0))
#define U1_EN_InputEnable()       (TRISESET = (1U<<0))
#define U1_EN_Get()               ((PORTE >> 0) & 0x1U)
#define U1_EN_PIN                  GPIO_PIN_RE0

/*** Macros for U2_EN pin ***/
#define U2_EN_Set()               (LATESET = (1U<<1))
#define U2_EN_Clear()             (LATECLR = (1U<<1))
#define U2_EN_Toggle()            (LATEINV= (1U<<1))
#define U2_EN_OutputEnable()      (TRISECLR = (1U<<1))
#define U2_EN_InputEnable()       (TRISESET = (1U<<1))
#define U2_EN_Get()               ((PORTE >> 1) & 0x1U)
#define U2_EN_PIN                  GPIO_PIN_RE1

/*** Macros for IN5 pin ***/
#define IN5_Set()               (LATFSET = (1U<<5))
#define IN5_Clear()             (LATFCLR = (1U<<5))
#define IN5_Toggle()            (LATFINV= (1U<<5))
#define IN5_OutputEnable()      (TRISFCLR = (1U<<5))
#define IN5_InputEnable()       (TRISFSET = (1U<<5))
#define IN5_Get()               ((PORTF >> 5) & 0x1U)
#define IN5_PIN                  GPIO_PIN_RF5

/*** Macros for IN6 pin ***/
#define IN6_Set()               (LATCSET = (1U<<15))
#define IN6_Clear()             (LATCCLR = (1U<<15))
#define IN6_Toggle()            (LATCINV= (1U<<15))
#define IN6_OutputEnable()      (TRISCCLR = (1U<<15))
#define IN6_InputEnable()       (TRISCSET = (1U<<15))
#define IN6_Get()               ((PORTC >> 15) & 0x1U)
#define IN6_PIN                  GPIO_PIN_RC15

/*** Macros for MAX_EN1 pin ***/
#define MAX_EN1_Set()               (LATDSET = (1U<<8))
#define MAX_EN1_Clear()             (LATDCLR = (1U<<8))
#define MAX_EN1_Toggle()            (LATDINV= (1U<<8))
#define MAX_EN1_OutputEnable()      (TRISDCLR = (1U<<8))
#define MAX_EN1_InputEnable()       (TRISDSET = (1U<<8))
#define MAX_EN1_Get()               ((PORTD >> 8) & 0x1U)
#define MAX_EN1_PIN                  GPIO_PIN_RD8

/*** Macros for GPIO_RC13 pin ***/
#define GPIO_RC13_Set()               (LATCSET = (1U<<13))
#define GPIO_RC13_Clear()             (LATCCLR = (1U<<13))
#define GPIO_RC13_Toggle()            (LATCINV= (1U<<13))
#define GPIO_RC13_OutputEnable()      (TRISCCLR = (1U<<13))
#define GPIO_RC13_InputEnable()       (TRISCSET = (1U<<13))
#define GPIO_RC13_Get()               ((PORTC >> 13) & 0x1U)
#define GPIO_RC13_PIN                  GPIO_PIN_RC13

/*** Macros for IN7 pin ***/
#define IN7_Set()               (LATBSET = (1U<<9))
#define IN7_Clear()             (LATBCLR = (1U<<9))
#define IN7_Toggle()            (LATBINV= (1U<<9))
#define IN7_OutputEnable()      (TRISBCLR = (1U<<9))
#define IN7_InputEnable()       (TRISBSET = (1U<<9))
#define IN7_Get()               ((PORTB >> 9) & 0x1U)
#define IN7_PIN                  GPIO_PIN_RB9

/*** Macros for DO1 pin ***/
#define DO1_Set()               (LATDSET = (1U<<12))
#define DO1_Clear()             (LATDCLR = (1U<<12))
#define DO1_Toggle()            (LATDINV= (1U<<12))
#define DO1_OutputEnable()      (TRISDCLR = (1U<<12))
#define DO1_InputEnable()       (TRISDSET = (1U<<12))
#define DO1_Get()               ((PORTD >> 12) & 0x1U)
#define DO1_PIN                  GPIO_PIN_RD12

/*** Macros for DO2 pin ***/
#define DO2_Set()               (LATDSET = (1U<<13))
#define DO2_Clear()             (LATDCLR = (1U<<13))
#define DO2_Toggle()            (LATDINV= (1U<<13))
#define DO2_OutputEnable()      (TRISDCLR = (1U<<13))
#define DO2_InputEnable()       (TRISDSET = (1U<<13))
#define DO2_Get()               ((PORTD >> 13) & 0x1U)
#define DO2_PIN                  GPIO_PIN_RD13

/*** Macros for DO3 pin ***/
#define DO3_Set()               (LATCSET = (1U<<8))
#define DO3_Clear()             (LATCCLR = (1U<<8))
#define DO3_Toggle()            (LATCINV= (1U<<8))
#define DO3_OutputEnable()      (TRISCCLR = (1U<<8))
#define DO3_InputEnable()       (TRISCSET = (1U<<8))
#define DO3_Get()               ((PORTC >> 8) & 0x1U)
#define DO3_PIN                  GPIO_PIN_RC8

/*** Macros for DO4 pin ***/
#define DO4_Set()               (LATDSET = (1U<<5))
#define DO4_Clear()             (LATDCLR = (1U<<5))
#define DO4_Toggle()            (LATDINV= (1U<<5))
#define DO4_OutputEnable()      (TRISDCLR = (1U<<5))
#define DO4_InputEnable()       (TRISDSET = (1U<<5))
#define DO4_Get()               ((PORTD >> 5) & 0x1U)
#define DO4_PIN                  GPIO_PIN_RD5

/*** Macros for DO5 pin ***/
#define DO5_Set()               (LATDSET = (1U<<6))
#define DO5_Clear()             (LATDCLR = (1U<<6))
#define DO5_Toggle()            (LATDINV= (1U<<6))
#define DO5_OutputEnable()      (TRISDCLR = (1U<<6))
#define DO5_InputEnable()       (TRISDSET = (1U<<6))
#define DO5_Get()               ((PORTD >> 6) & 0x1U)
#define DO5_PIN                  GPIO_PIN_RD6

/*** Macros for DO6 pin ***/
#define DO6_Set()               (LATCSET = (1U<<9))
#define DO6_Clear()             (LATCCLR = (1U<<9))
#define DO6_Toggle()            (LATCINV= (1U<<9))
#define DO6_OutputEnable()      (TRISCCLR = (1U<<9))
#define DO6_InputEnable()       (TRISCSET = (1U<<9))
#define DO6_Get()               ((PORTC >> 9) & 0x1U)
#define DO6_PIN                  GPIO_PIN_RC9

/*** Macros for IN8 pin ***/
#define IN8_Set()               (LATFSET = (1U<<0))
#define IN8_Clear()             (LATFCLR = (1U<<0))
#define IN8_Toggle()            (LATFINV= (1U<<0))
#define IN8_OutputEnable()      (TRISFCLR = (1U<<0))
#define IN8_InputEnable()       (TRISFSET = (1U<<0))
#define IN8_Get()               ((PORTF >> 0) & 0x1U)
#define IN8_PIN                  GPIO_PIN_RF0

/*** Macros for option1 pin ***/
#define option1_Set()               (LATFSET = (1U<<1))
#define option1_Clear()             (LATFCLR = (1U<<1))
#define option1_Toggle()            (LATFINV= (1U<<1))
#define option1_OutputEnable()      (TRISFCLR = (1U<<1))
#define option1_InputEnable()       (TRISFSET = (1U<<1))
#define option1_Get()               ((PORTF >> 1) & 0x1U)
#define option1_PIN                  GPIO_PIN_RF1

/*** Macros for option2 pin ***/
#define option2_Set()               (LATGSET = (1U<<1))
#define option2_Clear()             (LATGCLR = (1U<<1))
#define option2_Toggle()            (LATGINV= (1U<<1))
#define option2_OutputEnable()      (TRISGCLR = (1U<<1))
#define option2_InputEnable()       (TRISGSET = (1U<<1))
#define option2_Get()               ((PORTG >> 1) & 0x1U)
#define option2_PIN                  GPIO_PIN_RG1

/*** Macros for GPIO_RG0 pin ***/
#define GPIO_RG0_Set()               (LATGSET = (1U<<0))
#define GPIO_RG0_Clear()             (LATGCLR = (1U<<0))
#define GPIO_RG0_Toggle()            (LATGINV= (1U<<0))
#define GPIO_RG0_OutputEnable()      (TRISGCLR = (1U<<0))
#define GPIO_RG0_InputEnable()       (TRISGSET = (1U<<0))
#define GPIO_RG0_Get()               ((PORTG >> 0) & 0x1U)
#define GPIO_RG0_PIN                  GPIO_PIN_RG0

/*** Macros for DO7 pin ***/
#define DO7_Set()               (LATFSET = (1U<<6))
#define DO7_Clear()             (LATFCLR = (1U<<6))
#define DO7_Toggle()            (LATFINV= (1U<<6))
#define DO7_OutputEnable()      (TRISFCLR = (1U<<6))
#define DO7_InputEnable()       (TRISFSET = (1U<<6))
#define DO7_Get()               ((PORTF >> 6) & 0x1U)
#define DO7_PIN                  GPIO_PIN_RF6

/*** Macros for DO8 pin ***/
#define DO8_Set()               (LATFSET = (1U<<7))
#define DO8_Clear()             (LATFCLR = (1U<<7))
#define DO8_Toggle()            (LATFINV= (1U<<7))
#define DO8_OutputEnable()      (TRISFCLR = (1U<<7))
#define DO8_InputEnable()       (TRISFSET = (1U<<7))
#define DO8_Get()               ((PORTF >> 7) & 0x1U)
#define DO8_PIN                  GPIO_PIN_RF7

/*** Macros for BSP_LED3 pin ***/
#define BSP_LED3_Set()               (LATGSET = (1U<<14))
#define BSP_LED3_Clear()             (LATGCLR = (1U<<14))
#define BSP_LED3_Toggle()            (LATGINV= (1U<<14))
#define BSP_LED3_OutputEnable()      (TRISGCLR = (1U<<14))
#define BSP_LED3_InputEnable()       (TRISGSET = (1U<<14))
#define BSP_LED3_Get()               ((PORTG >> 14) & 0x1U)
#define BSP_LED3_PIN                  GPIO_PIN_RG14

/*** Macros for BSP_LED1 pin ***/
#define BSP_LED1_Set()               (LATGSET = (1U<<12))
#define BSP_LED1_Clear()             (LATGCLR = (1U<<12))
#define BSP_LED1_Toggle()            (LATGINV= (1U<<12))
#define BSP_LED1_OutputEnable()      (TRISGCLR = (1U<<12))
#define BSP_LED1_InputEnable()       (TRISGSET = (1U<<12))
#define BSP_LED1_Get()               ((PORTG >> 12) & 0x1U)
#define BSP_LED1_PIN                  GPIO_PIN_RG12

/*** Macros for BSP_LED2 pin ***/
#define BSP_LED2_Set()               (LATGSET = (1U<<13))
#define BSP_LED2_Clear()             (LATGCLR = (1U<<13))
#define BSP_LED2_Toggle()            (LATGINV= (1U<<13))
#define BSP_LED2_OutputEnable()      (TRISGCLR = (1U<<13))
#define BSP_LED2_InputEnable()       (TRISGSET = (1U<<13))
#define BSP_LED2_Get()               ((PORTG >> 13) & 0x1U)
#define BSP_LED2_PIN                  GPIO_PIN_RG13


// *****************************************************************************
/* GPIO Port

  Summary:
    Identifies the available GPIO Ports.

  Description:
    This enumeration identifies the available GPIO Ports.

  Remarks:
    The caller should not rely on the specific numbers assigned to any of
    these values as they may change from one processor to the next.

    Not all ports are available on all devices.  Refer to the specific
    device data sheet to determine which ports are supported.
*/


#define    GPIO_PORT_A  (0)
#define    GPIO_PORT_B  (1)
#define    GPIO_PORT_C  (2)
#define    GPIO_PORT_D  (3)
#define    GPIO_PORT_E  (4)
#define    GPIO_PORT_F  (5)
#define    GPIO_PORT_G  (6)
typedef uint32_t GPIO_PORT;

typedef enum
{
    GPIO_INTERRUPT_ON_MISMATCH,
    GPIO_INTERRUPT_ON_RISING_EDGE,
    GPIO_INTERRUPT_ON_FALLING_EDGE,
    GPIO_INTERRUPT_ON_BOTH_EDGES,
}GPIO_INTERRUPT_STYLE;

// *****************************************************************************
/* GPIO Port Pins

  Summary:
    Identifies the available GPIO port pins.

  Description:
    This enumeration identifies the available GPIO port pins.

  Remarks:
    The caller should not rely on the specific numbers assigned to any of
    these values as they may change from one processor to the next.

    Not all pins are available on all devices.  Refer to the specific
    device data sheet to determine which pins are supported.
*/


#define     GPIO_PIN_RA0  (0U)
#define     GPIO_PIN_RA1  (1U)
#define     GPIO_PIN_RA4  (4U)
#define     GPIO_PIN_RA7  (7U)
#define     GPIO_PIN_RA8  (8U)
#define     GPIO_PIN_RA10  (10U)
#define     GPIO_PIN_RA11  (11U)
#define     GPIO_PIN_RA12  (12U)
#define     GPIO_PIN_RA14  (14U)
#define     GPIO_PIN_RA15  (15U)
#define     GPIO_PIN_RB0  (16U)
#define     GPIO_PIN_RB1  (17U)
#define     GPIO_PIN_RB2  (18U)
#define     GPIO_PIN_RB3  (19U)
#define     GPIO_PIN_RB4  (20U)
#define     GPIO_PIN_RB5  (21U)
#define     GPIO_PIN_RB6  (22U)
#define     GPIO_PIN_RB7  (23U)
#define     GPIO_PIN_RB8  (24U)
#define     GPIO_PIN_RB9  (25U)
#define     GPIO_PIN_RB10  (26U)
#define     GPIO_PIN_RB11  (27U)
#define     GPIO_PIN_RB12  (28U)
#define     GPIO_PIN_RB13  (29U)
#define     GPIO_PIN_RB14  (30U)
#define     GPIO_PIN_RB15  (31U)
#define     GPIO_PIN_RC0  (32U)
#define     GPIO_PIN_RC1  (33U)
#define     GPIO_PIN_RC2  (34U)
#define     GPIO_PIN_RC6  (38U)
#define     GPIO_PIN_RC7  (39U)
#define     GPIO_PIN_RC8  (40U)
#define     GPIO_PIN_RC9  (41U)
#define     GPIO_PIN_RC10  (42U)
#define     GPIO_PIN_RC11  (43U)
#define     GPIO_PIN_RC12  (44U)
#define     GPIO_PIN_RC13  (45U)
#define     GPIO_PIN_RC15  (47U)
#define     GPIO_PIN_RD1  (49U)
#define     GPIO_PIN_RD2  (50U)
#define     GPIO_PIN_RD3  (51U)
#define     GPIO_PIN_RD4  (52U)
#define     GPIO_PIN_RD5  (53U)
#define     GPIO_PIN_RD6  (54U)
#define     GPIO_PIN_RD8  (56U)
#define     GPIO_PIN_RD12  (60U)
#define     GPIO_PIN_RD13  (61U)
#define     GPIO_PIN_RD14  (62U)
#define     GPIO_PIN_RD15  (63U)
#define     GPIO_PIN_RE0  (64U)
#define     GPIO_PIN_RE1  (65U)
#define     GPIO_PIN_RE8  (72U)
#define     GPIO_PIN_RE9  (73U)
#define     GPIO_PIN_RE12  (76U)
#define     GPIO_PIN_RE13  (77U)
#define     GPIO_PIN_RE14  (78U)
#define     GPIO_PIN_RE15  (79U)
#define     GPIO_PIN_RF0  (80U)
#define     GPIO_PIN_RF1  (81U)
#define     GPIO_PIN_RF5  (85U)
#define     GPIO_PIN_RF6  (86U)
#define     GPIO_PIN_RF7  (87U)
#define     GPIO_PIN_RF9  (89U)
#define     GPIO_PIN_RF10  (90U)
#define     GPIO_PIN_RF12  (92U)
#define     GPIO_PIN_RF13  (93U)
#define     GPIO_PIN_RG0  (96U)
#define     GPIO_PIN_RG1  (97U)
#define     GPIO_PIN_RG6  (102U)
#define     GPIO_PIN_RG7  (103U)
#define     GPIO_PIN_RG8  (104U)
#define     GPIO_PIN_RG9  (105U)
#define     GPIO_PIN_RG10  (106U)
#define     GPIO_PIN_RG11  (107U)
#define     GPIO_PIN_RG12  (108U)
#define     GPIO_PIN_RG13  (109U)
#define     GPIO_PIN_RG14  (110U)
#define     GPIO_PIN_RG15  (111U)

    /* This element should not be used in any of the GPIO APIs.
       It will be used by other modules or application to denote that none of the GPIO Pin is used */
#define    GPIO_PIN_NONE   (-1)

typedef uint32_t GPIO_PIN;


void GPIO_Initialize(void);

// *****************************************************************************
// *****************************************************************************
// Section: GPIO Functions which operates on multiple pins of a port
// *****************************************************************************
// *****************************************************************************

uint32_t GPIO_PortRead(GPIO_PORT port);

void GPIO_PortWrite(GPIO_PORT port, uint32_t mask, uint32_t value);

uint32_t GPIO_PortLatchRead ( GPIO_PORT port );

void GPIO_PortSet(GPIO_PORT port, uint32_t mask);

void GPIO_PortClear(GPIO_PORT port, uint32_t mask);

void GPIO_PortToggle(GPIO_PORT port, uint32_t mask);

void GPIO_PortInputEnable(GPIO_PORT port, uint32_t mask);

void GPIO_PortOutputEnable(GPIO_PORT port, uint32_t mask);

// *****************************************************************************
// *****************************************************************************
// Section: GPIO Functions which operates on one pin at a time
// *****************************************************************************
// *****************************************************************************

static inline void GPIO_PinWrite(GPIO_PIN pin, bool value)
{
	 uint32_t xvalue = (uint32_t)value;
    GPIO_PortWrite((pin>>4U), (uint32_t)(0x1U) << (pin & 0xFU), (xvalue) << (pin & 0xFU));
}

static inline bool GPIO_PinRead(GPIO_PIN pin)
{
    return ((((GPIO_PortRead((GPIO_PORT)(pin>>4U))) >> (pin & 0xFU)) & 0x1U) != 0U);
}

static inline bool GPIO_PinLatchRead(GPIO_PIN pin)
{
    return (((GPIO_PortLatchRead((GPIO_PORT)(pin>>4U)) >> (pin & 0xFU)) & 0x1U) != 0U);
}

static inline void GPIO_PinToggle(GPIO_PIN pin)
{
    GPIO_PortToggle((pin>>4U), (uint32_t)0x1U << (pin & 0xFU));
}

static inline void GPIO_PinSet(GPIO_PIN pin)
{
    GPIO_PortSet((pin>>4U), (uint32_t)0x1U << (pin & 0xFU));
}

static inline void GPIO_PinClear(GPIO_PIN pin)
{
    GPIO_PortClear((pin>>4U), (uint32_t)0x1U << (pin & 0xFU));
}

static inline void GPIO_PinInputEnable(GPIO_PIN pin)
{
    GPIO_PortInputEnable((pin>>4U), (uint32_t)0x1U << (pin & 0xFU));
}

static inline void GPIO_PinOutputEnable(GPIO_PIN pin)
{
    GPIO_PortOutputEnable((pin>>4U), (uint32_t)0x1U << (pin & 0xFU));
}


// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    }

#endif
// DOM-IGNORE-END
#endif // PLIB_GPIO_H
