/*******************************************************************************
  GPIO PLIB

  Company:
    Microchip Technology Inc.

  File Name:
    plib_gpio.h

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

/*** Macros for SPI_EN0 pin ***/
#define SPI_EN0_Set()               (LATDSET = (1<<1))
#define SPI_EN0_Clear()             (LATDCLR = (1<<1))
#define SPI_EN0_Toggle()            (LATDINV= (1<<1))
#define SPI_EN0_Get()               ((PORTD >> 1) & 0x1)
#define SPI_EN0_OutputEnable()      (TRISDCLR = (1<<1))
#define SPI_EN0_InputEnable()       (TRISDSET = (1<<1))
#define SPI_EN0_PIN                  GPIO_PIN_RD1
/*** Macros for SPI_EN1 pin ***/
#define SPI_EN1_Set()               (LATDSET = (1<<2))
#define SPI_EN1_Clear()             (LATDCLR = (1<<2))
#define SPI_EN1_Toggle()            (LATDINV= (1<<2))
#define SPI_EN1_Get()               ((PORTD >> 2) & 0x1)
#define SPI_EN1_OutputEnable()      (TRISDCLR = (1<<2))
#define SPI_EN1_InputEnable()       (TRISDSET = (1<<2))
#define SPI_EN1_PIN                  GPIO_PIN_RD2
/*** Macros for GPIO_RD4 pin ***/
#define GPIO_RD4_Set()               (LATDSET = (1<<4))
#define GPIO_RD4_Clear()             (LATDCLR = (1<<4))
#define GPIO_RD4_Toggle()            (LATDINV= (1<<4))
#define GPIO_RD4_Get()               ((PORTD >> 4) & 0x1)
#define GPIO_RD4_OutputEnable()      (TRISDCLR = (1<<4))
#define GPIO_RD4_InputEnable()       (TRISDSET = (1<<4))
#define GPIO_RD4_PIN                  GPIO_PIN_RD4
/*** Macros for RESET_LED pin ***/
#define RESET_LED_Set()               (LATGSET = (1<<9))
#define RESET_LED_Clear()             (LATGCLR = (1<<9))
#define RESET_LED_Toggle()            (LATGINV= (1<<9))
#define RESET_LED_Get()               ((PORTG >> 9) & 0x1)
#define RESET_LED_OutputEnable()      (TRISGCLR = (1<<9))
#define RESET_LED_InputEnable()       (TRISGSET = (1<<9))
#define RESET_LED_PIN                  GPIO_PIN_RG9
/*** Macros for GPIO_RG10 pin ***/
#define GPIO_RG10_Set()               (LATGSET = (1<<10))
#define GPIO_RG10_Clear()             (LATGCLR = (1<<10))
#define GPIO_RG10_Toggle()            (LATGINV= (1<<10))
#define GPIO_RG10_Get()               ((PORTG >> 10) & 0x1)
#define GPIO_RG10_OutputEnable()      (TRISGCLR = (1<<10))
#define GPIO_RG10_InputEnable()       (TRISGSET = (1<<10))
#define GPIO_RG10_PIN                  GPIO_PIN_RG10
/*** Macros for QEI1_E0 pin ***/
#define QEI1_E0_Set()               (LATESET = (1<<8))
#define QEI1_E0_Clear()             (LATECLR = (1<<8))
#define QEI1_E0_Toggle()            (LATEINV= (1<<8))
#define QEI1_E0_Get()               ((PORTE >> 8) & 0x1)
#define QEI1_E0_OutputEnable()      (TRISECLR = (1<<8))
#define QEI1_E0_InputEnable()       (TRISESET = (1<<8))
#define QEI1_E0_PIN                  GPIO_PIN_RE8
/*** Macros for QEI2_E0 pin ***/
#define QEI2_E0_Set()               (LATESET = (1<<9))
#define QEI2_E0_Clear()             (LATECLR = (1<<9))
#define QEI2_E0_Toggle()            (LATEINV= (1<<9))
#define QEI2_E0_Get()               ((PORTE >> 9) & 0x1)
#define QEI2_E0_OutputEnable()      (TRISECLR = (1<<9))
#define QEI2_E0_InputEnable()       (TRISESET = (1<<9))
#define QEI2_E0_PIN                  GPIO_PIN_RE9
/*** Macros for GPIO_RB0 pin ***/
#define GPIO_RB0_Set()               (LATBSET = (1<<0))
#define GPIO_RB0_Clear()             (LATBCLR = (1<<0))
#define GPIO_RB0_Toggle()            (LATBINV= (1<<0))
#define GPIO_RB0_Get()               ((PORTB >> 0) & 0x1)
#define GPIO_RB0_OutputEnable()      (TRISBCLR = (1<<0))
#define GPIO_RB0_InputEnable()       (TRISBSET = (1<<0))
#define GPIO_RB0_PIN                  GPIO_PIN_RB0
/*** Macros for GPIO_RB2 pin ***/
#define GPIO_RB2_Set()               (LATBSET = (1<<2))
#define GPIO_RB2_Clear()             (LATBCLR = (1<<2))
#define GPIO_RB2_Toggle()            (LATBINV= (1<<2))
#define GPIO_RB2_Get()               ((PORTB >> 2) & 0x1)
#define GPIO_RB2_OutputEnable()      (TRISBCLR = (1<<2))
#define GPIO_RB2_InputEnable()       (TRISBSET = (1<<2))
#define GPIO_RB2_PIN                  GPIO_PIN_RB2
/*** Macros for GPIO_RB3 pin ***/
#define GPIO_RB3_Set()               (LATBSET = (1<<3))
#define GPIO_RB3_Clear()             (LATBCLR = (1<<3))
#define GPIO_RB3_Toggle()            (LATBINV= (1<<3))
#define GPIO_RB3_Get()               ((PORTB >> 3) & 0x1)
#define GPIO_RB3_OutputEnable()      (TRISBCLR = (1<<3))
#define GPIO_RB3_InputEnable()       (TRISBSET = (1<<3))
#define GPIO_RB3_PIN                  GPIO_PIN_RB3
/*** Macros for GPIO_RC2 pin ***/
#define GPIO_RC2_Set()               (LATCSET = (1<<2))
#define GPIO_RC2_Clear()             (LATCCLR = (1<<2))
#define GPIO_RC2_Toggle()            (LATCINV= (1<<2))
#define GPIO_RC2_Get()               ((PORTC >> 2) & 0x1)
#define GPIO_RC2_OutputEnable()      (TRISCCLR = (1<<2))
#define GPIO_RC2_InputEnable()       (TRISCSET = (1<<2))
#define GPIO_RC2_PIN                  GPIO_PIN_RC2
/*** Macros for GPIO_RC11 pin ***/
#define GPIO_RC11_Set()               (LATCSET = (1<<11))
#define GPIO_RC11_Clear()             (LATCCLR = (1<<11))
#define GPIO_RC11_Toggle()            (LATCINV= (1<<11))
#define GPIO_RC11_Get()               ((PORTC >> 11) & 0x1)
#define GPIO_RC11_OutputEnable()      (TRISCCLR = (1<<11))
#define GPIO_RC11_InputEnable()       (TRISCSET = (1<<11))
#define GPIO_RC11_PIN                  GPIO_PIN_RC11
/*** Macros for GPIO_RG11 pin ***/
#define GPIO_RG11_Set()               (LATGSET = (1<<11))
#define GPIO_RG11_Clear()             (LATGCLR = (1<<11))
#define GPIO_RG11_Toggle()            (LATGINV= (1<<11))
#define GPIO_RG11_Get()               ((PORTG >> 11) & 0x1)
#define GPIO_RG11_OutputEnable()      (TRISGCLR = (1<<11))
#define GPIO_RG11_InputEnable()       (TRISGSET = (1<<11))
#define GPIO_RG11_PIN                  GPIO_PIN_RG11
/*** Macros for U1FS pin ***/
#define U1FS_Set()               (LATESET = (1<<12))
#define U1FS_Clear()             (LATECLR = (1<<12))
#define U1FS_Toggle()            (LATEINV= (1<<12))
#define U1FS_Get()               ((PORTE >> 12) & 0x1)
#define U1FS_OutputEnable()      (TRISECLR = (1<<12))
#define U1FS_InputEnable()       (TRISESET = (1<<12))
#define U1FS_PIN                  GPIO_PIN_RE12
/*** Macros for U2FS pin ***/
#define U2FS_Set()               (LATESET = (1<<13))
#define U2FS_Clear()             (LATECLR = (1<<13))
#define U2FS_Toggle()            (LATEINV= (1<<13))
#define U2FS_Get()               ((PORTE >> 13) & 0x1)
#define U2FS_OutputEnable()      (TRISECLR = (1<<13))
#define U2FS_InputEnable()       (TRISESET = (1<<13))
#define U2FS_PIN                  GPIO_PIN_RE13
/*** Macros for IN1 pin ***/
#define IN1_Set()               (LATDSET = (1<<14))
#define IN1_Clear()             (LATDCLR = (1<<14))
#define IN1_Toggle()            (LATDINV= (1<<14))
#define IN1_Get()               ((PORTD >> 14) & 0x1)
#define IN1_OutputEnable()      (TRISDCLR = (1<<14))
#define IN1_InputEnable()       (TRISDSET = (1<<14))
#define IN1_PIN                  GPIO_PIN_RD14
/*** Macros for IN2 pin ***/
#define IN2_Set()               (LATDSET = (1<<15))
#define IN2_Clear()             (LATDCLR = (1<<15))
#define IN2_Toggle()            (LATDINV= (1<<15))
#define IN2_Get()               ((PORTD >> 15) & 0x1)
#define IN2_OutputEnable()      (TRISDCLR = (1<<15))
#define IN2_InputEnable()       (TRISDSET = (1<<15))
#define IN2_PIN                  GPIO_PIN_RD15
/*** Macros for IN3 pin ***/
#define IN3_Set()               (LATASET = (1<<8))
#define IN3_Clear()             (LATACLR = (1<<8))
#define IN3_Toggle()            (LATAINV= (1<<8))
#define IN3_Get()               ((PORTA >> 8) & 0x1)
#define IN3_OutputEnable()      (TRISACLR = (1<<8))
#define IN3_InputEnable()       (TRISASET = (1<<8))
#define IN3_PIN                  GPIO_PIN_RA8
/*** Macros for IN4 pin ***/
#define IN4_Set()               (LATBSET = (1<<4))
#define IN4_Clear()             (LATBCLR = (1<<4))
#define IN4_Toggle()            (LATBINV= (1<<4))
#define IN4_Get()               ((PORTB >> 4) & 0x1)
#define IN4_OutputEnable()      (TRISBCLR = (1<<4))
#define IN4_InputEnable()       (TRISBSET = (1<<4))
#define IN4_PIN                  GPIO_PIN_RB4
/*** Macros for U1_EN pin ***/
#define U1_EN_Set()               (LATESET = (1<<0))
#define U1_EN_Clear()             (LATECLR = (1<<0))
#define U1_EN_Toggle()            (LATEINV= (1<<0))
#define U1_EN_Get()               ((PORTE >> 0) & 0x1)
#define U1_EN_OutputEnable()      (TRISECLR = (1<<0))
#define U1_EN_InputEnable()       (TRISESET = (1<<0))
#define U1_EN_PIN                  GPIO_PIN_RE0
/*** Macros for U2_EN pin ***/
#define U2_EN_Set()               (LATESET = (1<<1))
#define U2_EN_Clear()             (LATECLR = (1<<1))
#define U2_EN_Toggle()            (LATEINV= (1<<1))
#define U2_EN_Get()               ((PORTE >> 1) & 0x1)
#define U2_EN_OutputEnable()      (TRISECLR = (1<<1))
#define U2_EN_InputEnable()       (TRISESET = (1<<1))
#define U2_EN_PIN                  GPIO_PIN_RE1
/*** Macros for IN5 pin ***/
#define IN5_Set()               (LATFSET = (1<<5))
#define IN5_Clear()             (LATFCLR = (1<<5))
#define IN5_Toggle()            (LATFINV= (1<<5))
#define IN5_Get()               ((PORTF >> 5) & 0x1)
#define IN5_OutputEnable()      (TRISFCLR = (1<<5))
#define IN5_InputEnable()       (TRISFSET = (1<<5))
#define IN5_PIN                  GPIO_PIN_RF5
/*** Macros for IN6 pin ***/
#define IN6_Set()               (LATCSET = (1<<15))
#define IN6_Clear()             (LATCCLR = (1<<15))
#define IN6_Toggle()            (LATCINV= (1<<15))
#define IN6_Get()               ((PORTC >> 15) & 0x1)
#define IN6_OutputEnable()      (TRISCCLR = (1<<15))
#define IN6_InputEnable()       (TRISCSET = (1<<15))
#define IN6_PIN                  GPIO_PIN_RC15
/*** Macros for GPIO_RD8 pin ***/
#define GPIO_RD8_Set()               (LATDSET = (1<<8))
#define GPIO_RD8_Clear()             (LATDCLR = (1<<8))
#define GPIO_RD8_Toggle()            (LATDINV= (1<<8))
#define GPIO_RD8_Get()               ((PORTD >> 8) & 0x1)
#define GPIO_RD8_OutputEnable()      (TRISDCLR = (1<<8))
#define GPIO_RD8_InputEnable()       (TRISDSET = (1<<8))
#define GPIO_RD8_PIN                  GPIO_PIN_RD8
/*** Macros for IN7 pin ***/
#define IN7_Set()               (LATBSET = (1<<5))
#define IN7_Clear()             (LATBCLR = (1<<5))
#define IN7_Toggle()            (LATBINV= (1<<5))
#define IN7_Get()               ((PORTB >> 5) & 0x1)
#define IN7_OutputEnable()      (TRISBCLR = (1<<5))
#define IN7_InputEnable()       (TRISBSET = (1<<5))
#define IN7_PIN                  GPIO_PIN_RB5
/*** Macros for DERE pin ***/
#define DERE_Set()               (LATBSET = (1<<8))
#define DERE_Clear()             (LATBCLR = (1<<8))
#define DERE_Toggle()            (LATBINV= (1<<8))
#define DERE_Get()               ((PORTB >> 8) & 0x1)
#define DERE_OutputEnable()      (TRISBCLR = (1<<8))
#define DERE_InputEnable()       (TRISBSET = (1<<8))
#define DERE_PIN                  GPIO_PIN_RB8
/*** Macros for DO1 pin ***/
#define DO1_Set()               (LATDSET = (1<<12))
#define DO1_Clear()             (LATDCLR = (1<<12))
#define DO1_Toggle()            (LATDINV= (1<<12))
#define DO1_Get()               ((PORTD >> 12) & 0x1)
#define DO1_OutputEnable()      (TRISDCLR = (1<<12))
#define DO1_InputEnable()       (TRISDSET = (1<<12))
#define DO1_PIN                  GPIO_PIN_RD12
/*** Macros for DO2 pin ***/
#define DO2_Set()               (LATDSET = (1<<13))
#define DO2_Clear()             (LATDCLR = (1<<13))
#define DO2_Toggle()            (LATDINV= (1<<13))
#define DO2_Get()               ((PORTD >> 13) & 0x1)
#define DO2_OutputEnable()      (TRISDCLR = (1<<13))
#define DO2_InputEnable()       (TRISDSET = (1<<13))
#define DO2_PIN                  GPIO_PIN_RD13
/*** Macros for DO3 pin ***/
#define DO3_Set()               (LATCSET = (1<<8))
#define DO3_Clear()             (LATCCLR = (1<<8))
#define DO3_Toggle()            (LATCINV= (1<<8))
#define DO3_Get()               ((PORTC >> 8) & 0x1)
#define DO3_OutputEnable()      (TRISCCLR = (1<<8))
#define DO3_InputEnable()       (TRISCSET = (1<<8))
#define DO3_PIN                  GPIO_PIN_RC8
/*** Macros for DO4 pin ***/
#define DO4_Set()               (LATDSET = (1<<5))
#define DO4_Clear()             (LATDCLR = (1<<5))
#define DO4_Toggle()            (LATDINV= (1<<5))
#define DO4_Get()               ((PORTD >> 5) & 0x1)
#define DO4_OutputEnable()      (TRISDCLR = (1<<5))
#define DO4_InputEnable()       (TRISDSET = (1<<5))
#define DO4_PIN                  GPIO_PIN_RD5
/*** Macros for DO5 pin ***/
#define DO5_Set()               (LATDSET = (1<<6))
#define DO5_Clear()             (LATDCLR = (1<<6))
#define DO5_Toggle()            (LATDINV= (1<<6))
#define DO5_Get()               ((PORTD >> 6) & 0x1)
#define DO5_OutputEnable()      (TRISDCLR = (1<<6))
#define DO5_InputEnable()       (TRISDSET = (1<<6))
#define DO5_PIN                  GPIO_PIN_RD6
/*** Macros for DO6 pin ***/
#define DO6_Set()               (LATCSET = (1<<9))
#define DO6_Clear()             (LATCCLR = (1<<9))
#define DO6_Toggle()            (LATCINV= (1<<9))
#define DO6_Get()               ((PORTC >> 9) & 0x1)
#define DO6_OutputEnable()      (TRISCCLR = (1<<9))
#define DO6_InputEnable()       (TRISCSET = (1<<9))
#define DO6_PIN                  GPIO_PIN_RC9
/*** Macros for IN8 pin ***/
#define IN8_Set()               (LATFSET = (1<<0))
#define IN8_Clear()             (LATFCLR = (1<<0))
#define IN8_Toggle()            (LATFINV= (1<<0))
#define IN8_Get()               ((PORTF >> 0) & 0x1)
#define IN8_OutputEnable()      (TRISFCLR = (1<<0))
#define IN8_InputEnable()       (TRISFSET = (1<<0))
#define IN8_PIN                  GPIO_PIN_RF0
/*** Macros for GPIO_RF1 pin ***/
#define GPIO_RF1_Set()               (LATFSET = (1<<1))
#define GPIO_RF1_Clear()             (LATFCLR = (1<<1))
#define GPIO_RF1_Toggle()            (LATFINV= (1<<1))
#define GPIO_RF1_Get()               ((PORTF >> 1) & 0x1)
#define GPIO_RF1_OutputEnable()      (TRISFCLR = (1<<1))
#define GPIO_RF1_InputEnable()       (TRISFSET = (1<<1))
#define GPIO_RF1_PIN                  GPIO_PIN_RF1
/*** Macros for GPIO_RG1 pin ***/
#define GPIO_RG1_Set()               (LATGSET = (1<<1))
#define GPIO_RG1_Clear()             (LATGCLR = (1<<1))
#define GPIO_RG1_Toggle()            (LATGINV= (1<<1))
#define GPIO_RG1_Get()               ((PORTG >> 1) & 0x1)
#define GPIO_RG1_OutputEnable()      (TRISGCLR = (1<<1))
#define GPIO_RG1_InputEnable()       (TRISGSET = (1<<1))
#define GPIO_RG1_PIN                  GPIO_PIN_RG1
/*** Macros for GPIO_RG0 pin ***/
#define GPIO_RG0_Set()               (LATGSET = (1<<0))
#define GPIO_RG0_Clear()             (LATGCLR = (1<<0))
#define GPIO_RG0_Toggle()            (LATGINV= (1<<0))
#define GPIO_RG0_Get()               ((PORTG >> 0) & 0x1)
#define GPIO_RG0_OutputEnable()      (TRISGCLR = (1<<0))
#define GPIO_RG0_InputEnable()       (TRISGSET = (1<<0))
#define GPIO_RG0_PIN                  GPIO_PIN_RG0
/*** Macros for DO7 pin ***/
#define DO7_Set()               (LATFSET = (1<<6))
#define DO7_Clear()             (LATFCLR = (1<<6))
#define DO7_Toggle()            (LATFINV= (1<<6))
#define DO7_Get()               ((PORTF >> 6) & 0x1)
#define DO7_OutputEnable()      (TRISFCLR = (1<<6))
#define DO7_InputEnable()       (TRISFSET = (1<<6))
#define DO7_PIN                  GPIO_PIN_RF6
/*** Macros for DO8 pin ***/
#define DO8_Set()               (LATFSET = (1<<7))
#define DO8_Clear()             (LATFCLR = (1<<7))
#define DO8_Toggle()            (LATFINV= (1<<7))
#define DO8_Get()               ((PORTF >> 7) & 0x1)
#define DO8_OutputEnable()      (TRISFCLR = (1<<7))
#define DO8_InputEnable()       (TRISFSET = (1<<7))
#define DO8_PIN                  GPIO_PIN_RF7
/*** Macros for BSP_LED3 pin ***/
#define BSP_LED3_Set()               (LATGSET = (1<<14))
#define BSP_LED3_Clear()             (LATGCLR = (1<<14))
#define BSP_LED3_Toggle()            (LATGINV= (1<<14))
#define BSP_LED3_Get()               ((PORTG >> 14) & 0x1)
#define BSP_LED3_OutputEnable()      (TRISGCLR = (1<<14))
#define BSP_LED3_InputEnable()       (TRISGSET = (1<<14))
#define BSP_LED3_PIN                  GPIO_PIN_RG14
/*** Macros for BSP_LED1 pin ***/
#define BSP_LED1_Set()               (LATGSET = (1<<12))
#define BSP_LED1_Clear()             (LATGCLR = (1<<12))
#define BSP_LED1_Toggle()            (LATGINV= (1<<12))
#define BSP_LED1_Get()               ((PORTG >> 12) & 0x1)
#define BSP_LED1_OutputEnable()      (TRISGCLR = (1<<12))
#define BSP_LED1_InputEnable()       (TRISGSET = (1<<12))
#define BSP_LED1_PIN                  GPIO_PIN_RG12
/*** Macros for BSP_LED2 pin ***/
#define BSP_LED2_Set()               (LATGSET = (1<<13))
#define BSP_LED2_Clear()             (LATGCLR = (1<<13))
#define BSP_LED2_Toggle()            (LATGINV= (1<<13))
#define BSP_LED2_Get()               ((PORTG >> 13) & 0x1)
#define BSP_LED2_OutputEnable()      (TRISGCLR = (1<<13))
#define BSP_LED2_InputEnable()       (TRISGSET = (1<<13))
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

typedef enum
{
    GPIO_PORT_A = 0,
    GPIO_PORT_B = 1,
    GPIO_PORT_C = 2,
    GPIO_PORT_D = 3,
    GPIO_PORT_E = 4,
    GPIO_PORT_F = 5,
    GPIO_PORT_G = 6,
} GPIO_PORT;

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

typedef enum
{
    GPIO_PIN_RA0 = 0,
    GPIO_PIN_RA1 = 1,
    GPIO_PIN_RA4 = 4,
    GPIO_PIN_RA7 = 7,
    GPIO_PIN_RA8 = 8,
    GPIO_PIN_RA10 = 10,
    GPIO_PIN_RA11 = 11,
    GPIO_PIN_RA12 = 12,
    GPIO_PIN_RA14 = 14,
    GPIO_PIN_RA15 = 15,
    GPIO_PIN_RB0 = 16,
    GPIO_PIN_RB1 = 17,
    GPIO_PIN_RB2 = 18,
    GPIO_PIN_RB3 = 19,
    GPIO_PIN_RB4 = 20,
    GPIO_PIN_RB5 = 21,
    GPIO_PIN_RB6 = 22,
    GPIO_PIN_RB7 = 23,
    GPIO_PIN_RB8 = 24,
    GPIO_PIN_RB9 = 25,
    GPIO_PIN_RB10 = 26,
    GPIO_PIN_RB11 = 27,
    GPIO_PIN_RB12 = 28,
    GPIO_PIN_RB13 = 29,
    GPIO_PIN_RB14 = 30,
    GPIO_PIN_RB15 = 31,
    GPIO_PIN_RC0 = 32,
    GPIO_PIN_RC1 = 33,
    GPIO_PIN_RC2 = 34,
    GPIO_PIN_RC6 = 38,
    GPIO_PIN_RC7 = 39,
    GPIO_PIN_RC8 = 40,
    GPIO_PIN_RC9 = 41,
    GPIO_PIN_RC10 = 42,
    GPIO_PIN_RC11 = 43,
    GPIO_PIN_RC12 = 44,
    GPIO_PIN_RC13 = 45,
    GPIO_PIN_RC15 = 47,
    GPIO_PIN_RD1 = 49,
    GPIO_PIN_RD2 = 50,
    GPIO_PIN_RD3 = 51,
    GPIO_PIN_RD4 = 52,
    GPIO_PIN_RD5 = 53,
    GPIO_PIN_RD6 = 54,
    GPIO_PIN_RD8 = 56,
    GPIO_PIN_RD12 = 60,
    GPIO_PIN_RD13 = 61,
    GPIO_PIN_RD14 = 62,
    GPIO_PIN_RD15 = 63,
    GPIO_PIN_RE0 = 64,
    GPIO_PIN_RE1 = 65,
    GPIO_PIN_RE8 = 72,
    GPIO_PIN_RE9 = 73,
    GPIO_PIN_RE12 = 76,
    GPIO_PIN_RE13 = 77,
    GPIO_PIN_RE14 = 78,
    GPIO_PIN_RE15 = 79,
    GPIO_PIN_RF0 = 80,
    GPIO_PIN_RF1 = 81,
    GPIO_PIN_RF5 = 85,
    GPIO_PIN_RF6 = 86,
    GPIO_PIN_RF7 = 87,
    GPIO_PIN_RF9 = 89,
    GPIO_PIN_RF10 = 90,
    GPIO_PIN_RF12 = 92,
    GPIO_PIN_RF13 = 93,
    GPIO_PIN_RG0 = 96,
    GPIO_PIN_RG1 = 97,
    GPIO_PIN_RG6 = 102,
    GPIO_PIN_RG7 = 103,
    GPIO_PIN_RG8 = 104,
    GPIO_PIN_RG9 = 105,
    GPIO_PIN_RG10 = 106,
    GPIO_PIN_RG11 = 107,
    GPIO_PIN_RG12 = 108,
    GPIO_PIN_RG13 = 109,
    GPIO_PIN_RG14 = 110,
    GPIO_PIN_RG15 = 111,

    /* This element should not be used in any of the GPIO APIs.
       It will be used by other modules or application to denote that none of the GPIO Pin is used */
    GPIO_PIN_NONE = -1

} GPIO_PIN;


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
    GPIO_PortWrite(pin>>4, (uint32_t)(0x1) << (pin & 0xF), (uint32_t)(value) << (pin & 0xF));
}

static inline bool GPIO_PinRead(GPIO_PIN pin)
{
    return (bool)(((GPIO_PortRead(pin>>4)) >> (pin & 0xF)) & 0x1);
}

static inline bool GPIO_PinLatchRead(GPIO_PIN pin)
{
    return (bool)((GPIO_PortLatchRead(pin>>4) >> (pin & 0xF)) & 0x1);
}

static inline void GPIO_PinToggle(GPIO_PIN pin)
{
    GPIO_PortToggle(pin>>4, 0x1 << (pin & 0xF));
}

static inline void GPIO_PinSet(GPIO_PIN pin)
{
    GPIO_PortSet(pin>>4, 0x1 << (pin & 0xF));
}

static inline void GPIO_PinClear(GPIO_PIN pin)
{
    GPIO_PortClear(pin>>4, 0x1 << (pin & 0xF));
}

static inline void GPIO_PinInputEnable(GPIO_PIN pin)
{
    GPIO_PortInputEnable(pin>>4, 0x1 << (pin & 0xF));
}

static inline void GPIO_PinOutputEnable(GPIO_PIN pin)
{
    GPIO_PortOutputEnable(pin>>4, 0x1 << (pin & 0xF));
}


// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    }

#endif
// DOM-IGNORE-END
#endif // PLIB_GPIO_H
