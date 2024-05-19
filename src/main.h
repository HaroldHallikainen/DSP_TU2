/* 
 * File:   main.h
 * Author: Harold_Win7
 *
 * Created on February 9, 2022, 10:19 PM
 */

#ifndef MAIN_H
#define	MAIN_H

#define TRUE 1
#define FALSE 0

extern volatile int Timer2TimeoutCounter;
extern volatile uint32_t MillisecondCounter; // Advances every 1 ms. Used by WiFi
extern int TimeoutCounterMin;              // Minimum timeout value to see if we are servicing audio on time
extern int MsLevelPrintCount;               // How many times to print the MarkSpace level used in mark hold
extern int16_t FpPollCounter;                // Decrements at 8 kHz telling us when to poll switches and LEDs.
extern   char StringBuf[100];
typedef enum {CLI, modem} UartDest_t;   // Where to send UART1 data
extern UartDest_t UartDest;
extern double MarkDemodOut, SpaceDemodOut;
typedef enum {NONE,ADC, AGC, INPUT_BPF, LIMITER, MARK_FILTER_OUT, SPACE_FILTER_OUT, MARK_DEMOD_OUT, SPACE_DEMOD_OUT, DISCRIM, DDS, THRESHOLD, DISCRIM_LESS_THRESHOLD} AudioOut_t;
extern AudioOut_t AudioOut;
extern char AudioOutString[][17];       // Each string is 16 bytes long plus null terminator
extern double MarkFreq;
extern double SpaceFreq;

#define LoopSenseMark (0==LOOP_SENSE_Get()) // If loop mark, sense opto output low



void PrintString(char *string);     // Send the string to UART1 to USB.
void PrintChar(char data);          // Print a character
double max(double x, double y);     // Return the maximum value 
void _mon_putc(char c);             // Printf redirection

// Macro for debug printing
#include <stdio.h>

// Below macro is one way to get dbprintf out uart 1.
//#define dprintf(...) sprintf(StringBuf,__VA_ARGS__);PrintString(StringBuf)

// Below also sends dprintf to uart 1 using change to write in config/DSP_TU2/stdio/xc32_monitor.c
#define dprintf printf 

#ifdef	__cplusplus
extern "C" {
#endif

#endif    