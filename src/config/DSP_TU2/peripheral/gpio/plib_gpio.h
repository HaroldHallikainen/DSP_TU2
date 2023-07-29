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


/*** Macros for LOOP_KEY pin ***/
#define LOOP_KEY_Set()               (LATESET = (1U<<5))
#define LOOP_KEY_Clear()             (LATECLR = (1U<<5))
#define LOOP_KEY_Toggle()            (LATEINV= (1U<<5))
#define LOOP_KEY_OutputEnable()      (TRISECLR = (1U<<5))
#define LOOP_KEY_InputEnable()       (TRISESET = (1U<<5))
#define LOOP_KEY_Get()               ((PORTE >> 5) & 0x1U)
#define LOOP_KEY_PIN                  GPIO_PIN_RE5

/*** Macros for LOOP_SENSE pin ***/
#define LOOP_SENSE_Set()               (LATESET = (1U<<6))
#define LOOP_SENSE_Clear()             (LATECLR = (1U<<6))
#define LOOP_SENSE_Toggle()            (LATEINV= (1U<<6))
#define LOOP_SENSE_OutputEnable()      (TRISECLR = (1U<<6))
#define LOOP_SENSE_InputEnable()       (TRISESET = (1U<<6))
#define LOOP_SENSE_Get()               ((PORTE >> 6) & 0x1U)
#define LOOP_SENSE_PIN                  GPIO_PIN_RE6

/*** Macros for WIFI_CSn pin ***/
#define WIFI_CSn_Set()               (LATESET = (1U<<7))
#define WIFI_CSn_Clear()             (LATECLR = (1U<<7))
#define WIFI_CSn_Toggle()            (LATEINV= (1U<<7))
#define WIFI_CSn_OutputEnable()      (TRISECLR = (1U<<7))
#define WIFI_CSn_InputEnable()       (TRISESET = (1U<<7))
#define WIFI_CSn_Get()               ((PORTE >> 7) & 0x1U)
#define WIFI_CSn_PIN                  GPIO_PIN_RE7

/*** Macros for WIFI_SPI_CLK pin ***/
#define WIFI_SPI_CLK_Get()               ((PORTG >> 6) & 0x1U)
#define WIFI_SPI_CLK_PIN                  GPIO_PIN_RG6

/*** Macros for WIFI_MISO pin ***/
#define WIFI_MISO_Get()               ((PORTG >> 7) & 0x1U)
#define WIFI_MISO_PIN                  GPIO_PIN_RG7

/*** Macros for WIFI_MOSI pin ***/
#define WIFI_MOSI_Get()               ((PORTG >> 8) & 0x1U)
#define WIFI_MOSI_PIN                  GPIO_PIN_RG8

/*** Macros for PWM_OUT pin ***/
#define PWM_OUT_Get()               ((PORTG >> 9) & 0x1U)
#define PWM_OUT_PIN                  GPIO_PIN_RG9

/*** Macros for AFSK_OUT_EN pin ***/
#define AFSK_OUT_EN_Set()               (LATBSET = (1U<<5))
#define AFSK_OUT_EN_Clear()             (LATBCLR = (1U<<5))
#define AFSK_OUT_EN_Toggle()            (LATBINV= (1U<<5))
#define AFSK_OUT_EN_OutputEnable()      (TRISBCLR = (1U<<5))
#define AFSK_OUT_EN_InputEnable()       (TRISBSET = (1U<<5))
#define AFSK_OUT_EN_Get()               ((PORTB >> 5) & 0x1U)
#define AFSK_OUT_EN_PIN                  GPIO_PIN_RB5

/*** Macros for PTT pin ***/
#define PTT_Set()               (LATBSET = (1U<<4))
#define PTT_Clear()             (LATBCLR = (1U<<4))
#define PTT_Toggle()            (LATBINV= (1U<<4))
#define PTT_OutputEnable()      (TRISBCLR = (1U<<4))
#define PTT_InputEnable()       (TRISBSET = (1U<<4))
#define PTT_Get()               ((PORTB >> 4) & 0x1U)
#define PTT_PIN                  GPIO_PIN_RB4

/*** Macros for IDLEn pin ***/
#define IDLEn_Set()               (LATBSET = (1U<<3))
#define IDLEn_Clear()             (LATBCLR = (1U<<3))
#define IDLEn_Toggle()            (LATBINV= (1U<<3))
#define IDLEn_OutputEnable()      (TRISBCLR = (1U<<3))
#define IDLEn_InputEnable()       (TRISBSET = (1U<<3))
#define IDLEn_Get()               ((PORTB >> 3) & 0x1U)
#define IDLEn_PIN                  GPIO_PIN_RB3

/*** Macros for AFSK_IN pin ***/
#define AFSK_IN_Get()               ((PORTB >> 2) & 0x1U)
#define AFSK_IN_PIN                  GPIO_PIN_RB2

/*** Macros for MARK_HI_TOGGLEn pin ***/
#define MARK_HI_TOGGLEn_Set()               (LATBSET = (1U<<6))
#define MARK_HI_TOGGLEn_Clear()             (LATBCLR = (1U<<6))
#define MARK_HI_TOGGLEn_Toggle()            (LATBINV= (1U<<6))
#define MARK_HI_TOGGLEn_OutputEnable()      (TRISBCLR = (1U<<6))
#define MARK_HI_TOGGLEn_InputEnable()       (TRISBSET = (1U<<6))
#define MARK_HI_TOGGLEn_Get()               ((PORTB >> 6) & 0x1U)
#define MARK_HI_TOGGLEn_PIN                  GPIO_PIN_RB6

/*** Macros for MARK_HI_LED pin ***/
#define MARK_HI_LED_Set()               (LATBSET = (1U<<7))
#define MARK_HI_LED_Clear()             (LATBCLR = (1U<<7))
#define MARK_HI_LED_Toggle()            (LATBINV= (1U<<7))
#define MARK_HI_LED_OutputEnable()      (TRISBCLR = (1U<<7))
#define MARK_HI_LED_InputEnable()       (TRISBSET = (1U<<7))
#define MARK_HI_LED_Get()               ((PORTB >> 7) & 0x1U)
#define MARK_HI_LED_PIN                  GPIO_PIN_RB7

/*** Macros for TX_LED pin ***/
#define TX_LED_Set()               (LATBSET = (1U<<8))
#define TX_LED_Clear()             (LATBCLR = (1U<<8))
#define TX_LED_Toggle()            (LATBINV= (1U<<8))
#define TX_LED_OutputEnable()      (TRISBCLR = (1U<<8))
#define TX_LED_InputEnable()       (TRISBSET = (1U<<8))
#define TX_LED_Get()               ((PORTB >> 8) & 0x1U)
#define TX_LED_PIN                  GPIO_PIN_RB8

/*** Macros for FLASH_MISO pin ***/
#define FLASH_MISO_Get()               ((PORTB >> 9) & 0x1U)
#define FLASH_MISO_PIN                  GPIO_PIN_RB9

/*** Macros for FLASH_MOSI pin ***/
#define FLASH_MOSI_Get()               ((PORTB >> 10) & 0x1U)
#define FLASH_MOSI_PIN                  GPIO_PIN_RB10

/*** Macros for FLASH_CSn pin ***/
#define FLASH_CSn_Set()               (LATBSET = (1U<<11))
#define FLASH_CSn_Clear()             (LATBCLR = (1U<<11))
#define FLASH_CSn_Toggle()            (LATBINV= (1U<<11))
#define FLASH_CSn_OutputEnable()      (TRISBCLR = (1U<<11))
#define FLASH_CSn_InputEnable()       (TRISBSET = (1U<<11))
#define FLASH_CSn_Get()               ((PORTB >> 11) & 0x1U)
#define FLASH_CSn_PIN                  GPIO_PIN_RB11

/*** Macros for SHIFT_TOGGLEn pin ***/
#define SHIFT_TOGGLEn_Set()               (LATBSET = (1U<<12))
#define SHIFT_TOGGLEn_Clear()             (LATBCLR = (1U<<12))
#define SHIFT_TOGGLEn_Toggle()            (LATBINV= (1U<<12))
#define SHIFT_TOGGLEn_OutputEnable()      (TRISBCLR = (1U<<12))
#define SHIFT_TOGGLEn_InputEnable()       (TRISBSET = (1U<<12))
#define SHIFT_TOGGLEn_Get()               ((PORTB >> 12) & 0x1U)
#define SHIFT_TOGGLEn_PIN                  GPIO_PIN_RB12

/*** Macros for SHIFT_850_LED pin ***/
#define SHIFT_850_LED_Set()               (LATBSET = (1U<<13))
#define SHIFT_850_LED_Clear()             (LATBCLR = (1U<<13))
#define SHIFT_850_LED_Toggle()            (LATBINV= (1U<<13))
#define SHIFT_850_LED_OutputEnable()      (TRISBCLR = (1U<<13))
#define SHIFT_850_LED_InputEnable()       (TRISBSET = (1U<<13))
#define SHIFT_850_LED_Get()               ((PORTB >> 13) & 0x1U)
#define SHIFT_850_LED_PIN                  GPIO_PIN_RB13

/*** Macros for FLASH_SPI_CLK pin ***/
#define FLASH_SPI_CLK_Get()               ((PORTB >> 14) & 0x1U)
#define FLASH_SPI_CLK_PIN                  GPIO_PIN_RB14

/*** Macros for AUTOSTART_TOGGLEn pin ***/
#define AUTOSTART_TOGGLEn_Set()               (LATBSET = (1U<<15))
#define AUTOSTART_TOGGLEn_Clear()             (LATBCLR = (1U<<15))
#define AUTOSTART_TOGGLEn_Toggle()            (LATBINV= (1U<<15))
#define AUTOSTART_TOGGLEn_OutputEnable()      (TRISBCLR = (1U<<15))
#define AUTOSTART_TOGGLEn_InputEnable()       (TRISBSET = (1U<<15))
#define AUTOSTART_TOGGLEn_Get()               ((PORTB >> 15) & 0x1U)
#define AUTOSTART_TOGGLEn_PIN                  GPIO_PIN_RB15

/*** Macros for MOTOR_TOGGLEn pin ***/
#define MOTOR_TOGGLEn_Set()               (LATCSET = (1U<<12))
#define MOTOR_TOGGLEn_Clear()             (LATCCLR = (1U<<12))
#define MOTOR_TOGGLEn_Toggle()            (LATCINV= (1U<<12))
#define MOTOR_TOGGLEn_OutputEnable()      (TRISCCLR = (1U<<12))
#define MOTOR_TOGGLEn_InputEnable()       (TRISCSET = (1U<<12))
#define MOTOR_TOGGLEn_Get()               ((PORTC >> 12) & 0x1U)
#define MOTOR_TOGGLEn_PIN                  GPIO_PIN_RC12

/*** Macros for AUTOSTART_LED pin ***/
#define AUTOSTART_LED_Set()               (LATCSET = (1U<<15))
#define AUTOSTART_LED_Clear()             (LATCCLR = (1U<<15))
#define AUTOSTART_LED_Toggle()            (LATCINV= (1U<<15))
#define AUTOSTART_LED_OutputEnable()      (TRISCCLR = (1U<<15))
#define AUTOSTART_LED_InputEnable()       (TRISCSET = (1U<<15))
#define AUTOSTART_LED_Get()               ((PORTC >> 15) & 0x1U)
#define AUTOSTART_LED_PIN                  GPIO_PIN_RC15

/*** Macros for U1_RTSn pin ***/
#define U1_RTSn_Get()               ((PORTF >> 3) & 0x1U)
#define U1_RTSn_PIN                  GPIO_PIN_RF3

/*** Macros for U1_RX pin ***/
#define U1_RX_Get()               ((PORTF >> 4) & 0x1U)
#define U1_RX_PIN                  GPIO_PIN_RF4

/*** Macros for U1_TX pin ***/
#define U1_TX_Get()               ((PORTF >> 5) & 0x1U)
#define U1_TX_PIN                  GPIO_PIN_RF5

/*** Macros for U1_CTSn pin ***/
#define U1_CTSn_Get()               ((PORTD >> 9) & 0x1U)
#define U1_CTSn_PIN                  GPIO_PIN_RD9

/*** Macros for AUTOSTARTn pin ***/
#define AUTOSTARTn_Set()               (LATDSET = (1U<<10))
#define AUTOSTARTn_Clear()             (LATDCLR = (1U<<10))
#define AUTOSTARTn_Toggle()            (LATDINV= (1U<<10))
#define AUTOSTARTn_OutputEnable()      (TRISDCLR = (1U<<10))
#define AUTOSTARTn_InputEnable()       (TRISDSET = (1U<<10))
#define AUTOSTARTn_Get()               ((PORTD >> 10) & 0x1U)
#define AUTOSTARTn_PIN                  GPIO_PIN_RD10

/*** Macros for TX_TOGGLEn pin ***/
#define TX_TOGGLEn_Set()               (LATDSET = (1U<<11))
#define TX_TOGGLEn_Clear()             (LATDCLR = (1U<<11))
#define TX_TOGGLEn_Toggle()            (LATDINV= (1U<<11))
#define TX_TOGGLEn_OutputEnable()      (TRISDCLR = (1U<<11))
#define TX_TOGGLEn_InputEnable()       (TRISDSET = (1U<<11))
#define TX_TOGGLEn_Get()               ((PORTD >> 11) & 0x1U)
#define TX_TOGGLEn_PIN                  GPIO_PIN_RD11

/*** Macros for DISPLAY_RESETn pin ***/
#define DISPLAY_RESETn_Set()               (LATDSET = (1U<<0))
#define DISPLAY_RESETn_Clear()             (LATDCLR = (1U<<0))
#define DISPLAY_RESETn_Toggle()            (LATDINV= (1U<<0))
#define DISPLAY_RESETn_OutputEnable()      (TRISDCLR = (1U<<0))
#define DISPLAY_RESETn_InputEnable()       (TRISDSET = (1U<<0))
#define DISPLAY_RESETn_Get()               ((PORTD >> 0) & 0x1U)
#define DISPLAY_RESETn_PIN                  GPIO_PIN_RD0

/*** Macros for DISPLAY_DATA_CMDn pin ***/
#define DISPLAY_DATA_CMDn_Set()               (LATCSET = (1U<<13))
#define DISPLAY_DATA_CMDn_Clear()             (LATCCLR = (1U<<13))
#define DISPLAY_DATA_CMDn_Toggle()            (LATCINV= (1U<<13))
#define DISPLAY_DATA_CMDn_OutputEnable()      (TRISCCLR = (1U<<13))
#define DISPLAY_DATA_CMDn_InputEnable()       (TRISCSET = (1U<<13))
#define DISPLAY_DATA_CMDn_Get()               ((PORTC >> 13) & 0x1U)
#define DISPLAY_DATA_CMDn_PIN                  GPIO_PIN_RC13

/*** Macros for DISPLAY_CSn pin ***/
#define DISPLAY_CSn_Set()               (LATCSET = (1U<<14))
#define DISPLAY_CSn_Clear()             (LATCCLR = (1U<<14))
#define DISPLAY_CSn_Toggle()            (LATCINV= (1U<<14))
#define DISPLAY_CSn_OutputEnable()      (TRISCCLR = (1U<<14))
#define DISPLAY_CSn_InputEnable()       (TRISCSET = (1U<<14))
#define DISPLAY_CSn_Get()               ((PORTC >> 14) & 0x1U)
#define DISPLAY_CSn_PIN                  GPIO_PIN_RC14

/*** Macros for DISPLAY_SPI_CLK pin ***/
#define DISPLAY_SPI_CLK_Get()               ((PORTD >> 1) & 0x1U)
#define DISPLAY_SPI_CLK_PIN                  GPIO_PIN_RD1

/*** Macros for DISPLAY_MOSI pin ***/
#define DISPLAY_MOSI_Get()               ((PORTD >> 2) & 0x1U)
#define DISPLAY_MOSI_PIN                  GPIO_PIN_RD2

/*** Macros for MOTOR_LED pin ***/
#define MOTOR_LED_Set()               (LATDSET = (1U<<3))
#define MOTOR_LED_Clear()             (LATDCLR = (1U<<3))
#define MOTOR_LED_Toggle()            (LATDINV= (1U<<3))
#define MOTOR_LED_OutputEnable()      (TRISDCLR = (1U<<3))
#define MOTOR_LED_InputEnable()       (TRISDSET = (1U<<3))
#define MOTOR_LED_Get()               ((PORTD >> 3) & 0x1U)
#define MOTOR_LED_PIN                  GPIO_PIN_RD3

/*** Macros for KOS_TOGGLEn pin ***/
#define KOS_TOGGLEn_Set()               (LATDSET = (1U<<4))
#define KOS_TOGGLEn_Clear()             (LATDCLR = (1U<<4))
#define KOS_TOGGLEn_Toggle()            (LATDINV= (1U<<4))
#define KOS_TOGGLEn_OutputEnable()      (TRISDCLR = (1U<<4))
#define KOS_TOGGLEn_InputEnable()       (TRISDSET = (1U<<4))
#define KOS_TOGGLEn_Get()               ((PORTD >> 4) & 0x1U)
#define KOS_TOGGLEn_PIN                  GPIO_PIN_RD4

/*** Macros for KOS_LED pin ***/
#define KOS_LED_Set()               (LATDSET = (1U<<5))
#define KOS_LED_Clear()             (LATDCLR = (1U<<5))
#define KOS_LED_Toggle()            (LATDINV= (1U<<5))
#define KOS_LED_OutputEnable()      (TRISDCLR = (1U<<5))
#define KOS_LED_InputEnable()       (TRISDSET = (1U<<5))
#define KOS_LED_Get()               ((PORTD >> 5) & 0x1U)
#define KOS_LED_PIN                  GPIO_PIN_RD5

/*** Macros for ENCODER_SWn pin ***/
#define ENCODER_SWn_Set()               (LATFSET = (1U<<0))
#define ENCODER_SWn_Clear()             (LATFCLR = (1U<<0))
#define ENCODER_SWn_Toggle()            (LATFINV= (1U<<0))
#define ENCODER_SWn_OutputEnable()      (TRISFCLR = (1U<<0))
#define ENCODER_SWn_InputEnable()       (TRISFSET = (1U<<0))
#define ENCODER_SWn_Get()               ((PORTF >> 0) & 0x1U)
#define ENCODER_SWn_PIN                  GPIO_PIN_RF0

/*** Macros for WIFI_INTn pin ***/
#define WIFI_INTn_Get()               ((PORTF >> 1) & 0x1U)
#define WIFI_INTn_PIN                  GPIO_PIN_RF1

/*** Macros for GPIO_RE0 pin ***/
#define GPIO_RE0_Set()               (LATESET = (1U<<0))
#define GPIO_RE0_Clear()             (LATECLR = (1U<<0))
#define GPIO_RE0_Toggle()            (LATEINV= (1U<<0))
#define GPIO_RE0_OutputEnable()      (TRISECLR = (1U<<0))
#define GPIO_RE0_InputEnable()       (TRISESET = (1U<<0))
#define GPIO_RE0_Get()               ((PORTE >> 0) & 0x1U)
#define GPIO_RE0_PIN                  GPIO_PIN_RE0

/*** Macros for QAn pin ***/
#define QAn_Set()               (LATESET = (1U<<1))
#define QAn_Clear()             (LATECLR = (1U<<1))
#define QAn_Toggle()            (LATEINV= (1U<<1))
#define QAn_OutputEnable()      (TRISECLR = (1U<<1))
#define QAn_InputEnable()       (TRISESET = (1U<<1))
#define QAn_Get()               ((PORTE >> 1) & 0x1U)
#define QAn_PIN                  GPIO_PIN_RE1

/*** Macros for QBn pin ***/
#define QBn_Set()               (LATESET = (1U<<2))
#define QBn_Clear()             (LATECLR = (1U<<2))
#define QBn_Toggle()            (LATEINV= (1U<<2))
#define QBn_OutputEnable()      (TRISECLR = (1U<<2))
#define QBn_InputEnable()       (TRISESET = (1U<<2))
#define QBn_Get()               ((PORTE >> 2) & 0x1U)
#define QBn_PIN                  GPIO_PIN_RE2

/*** Macros for WIFI_RESETn pin ***/
#define WIFI_RESETn_Set()               (LATESET = (1U<<3))
#define WIFI_RESETn_Clear()             (LATECLR = (1U<<3))
#define WIFI_RESETn_Toggle()            (LATEINV= (1U<<3))
#define WIFI_RESETn_OutputEnable()      (TRISECLR = (1U<<3))
#define WIFI_RESETn_InputEnable()       (TRISESET = (1U<<3))
#define WIFI_RESETn_Get()               ((PORTE >> 3) & 0x1U)
#define WIFI_RESETn_PIN                  GPIO_PIN_RE3

/*** Macros for WIFI_EN pin ***/
#define WIFI_EN_Set()               (LATESET = (1U<<4))
#define WIFI_EN_Clear()             (LATECLR = (1U<<4))
#define WIFI_EN_Toggle()            (LATEINV= (1U<<4))
#define WIFI_EN_OutputEnable()      (TRISECLR = (1U<<4))
#define WIFI_EN_InputEnable()       (TRISESET = (1U<<4))
#define WIFI_EN_Get()               ((PORTE >> 4) & 0x1U)
#define WIFI_EN_PIN                  GPIO_PIN_RE4


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


#define    GPIO_PORT_B  (0)
#define    GPIO_PORT_C  (1)
#define    GPIO_PORT_D  (2)
#define    GPIO_PORT_E  (3)
#define    GPIO_PORT_F  (4)
#define    GPIO_PORT_G  (5)
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


#define     GPIO_PIN_RB0  (0U)
#define     GPIO_PIN_RB1  (1U)
#define     GPIO_PIN_RB2  (2U)
#define     GPIO_PIN_RB3  (3U)
#define     GPIO_PIN_RB4  (4U)
#define     GPIO_PIN_RB5  (5U)
#define     GPIO_PIN_RB6  (6U)
#define     GPIO_PIN_RB7  (7U)
#define     GPIO_PIN_RB8  (8U)
#define     GPIO_PIN_RB9  (9U)
#define     GPIO_PIN_RB10  (10U)
#define     GPIO_PIN_RB11  (11U)
#define     GPIO_PIN_RB12  (12U)
#define     GPIO_PIN_RB13  (13U)
#define     GPIO_PIN_RB14  (14U)
#define     GPIO_PIN_RB15  (15U)
#define     GPIO_PIN_RC12  (28U)
#define     GPIO_PIN_RC13  (29U)
#define     GPIO_PIN_RC14  (30U)
#define     GPIO_PIN_RC15  (31U)
#define     GPIO_PIN_RD0  (32U)
#define     GPIO_PIN_RD1  (33U)
#define     GPIO_PIN_RD2  (34U)
#define     GPIO_PIN_RD3  (35U)
#define     GPIO_PIN_RD4  (36U)
#define     GPIO_PIN_RD5  (37U)
#define     GPIO_PIN_RD9  (41U)
#define     GPIO_PIN_RD10  (42U)
#define     GPIO_PIN_RD11  (43U)
#define     GPIO_PIN_RE0  (48U)
#define     GPIO_PIN_RE1  (49U)
#define     GPIO_PIN_RE2  (50U)
#define     GPIO_PIN_RE3  (51U)
#define     GPIO_PIN_RE4  (52U)
#define     GPIO_PIN_RE5  (53U)
#define     GPIO_PIN_RE6  (54U)
#define     GPIO_PIN_RE7  (55U)
#define     GPIO_PIN_RF0  (64U)
#define     GPIO_PIN_RF1  (65U)
#define     GPIO_PIN_RF3  (67U)
#define     GPIO_PIN_RF4  (68U)
#define     GPIO_PIN_RF5  (69U)
#define     GPIO_PIN_RG6  (86U)
#define     GPIO_PIN_RG7  (87U)
#define     GPIO_PIN_RG8  (88U)
#define     GPIO_PIN_RG9  (89U)

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
