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
extern int TimeoutCounterMin;              // Minimum timeout value to see if we are servicing audio on time
extern int16_t FpPollCounter;                // Decrements at 8 kHz telling us when to poll switches and LEDs.
extern   char StringBuf[100];
typedef enum {CLI, modem} UartDest_t;   // Where to send UART1 data
extern UartDest_t UartDest;
extern uint32_t MarkHoldReleaseSamples; // How many samples to disable mark hold after good mark
extern double MarkDemodOut, SpaceDemodOut;
typedef enum {NONE,ADC, AGC, INPUT_BPF, LIMITER, MARK_FILTER_OUT, SPACE_FILTER_OUT, MARK_DEMOD_OUT, SPACE_DEMOD_OUT, DISCRIM, DDS, THRESHOLD, DISCRIM_LESS_THRESHOLD} AudioOut_t;
extern AudioOut_t AudioOut;
extern char AudioOutString[][17];       // Each string is 16 bytes long plus null terminator
extern double MarkFreq;
extern double SpaceFreq;

#define LoopSenseMark (0==LOOP_SENSE_Get()) // If loop mark, sense opto output low



void PrintString(char *string);     // Send the string to UART1 to USB.
void PrintChar(char data);          // Print a character
 


#ifdef	__cplusplus
extern "C" {
#endif

#endif    