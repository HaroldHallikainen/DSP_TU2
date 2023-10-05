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

extern volatile int16_t Timer2TimeoutCounter;
extern int16_t FpPollCounter;                // Decrements at 8 kHz telling us when to poll switches and LEDs.
extern   char StringBuf[100];
typedef enum {CLI, modem} UartDest_t;   // Where to send UART1 data
extern UartDest_t UartDest;

// typedef double smp_type; // Results in 11.5% CPU usage. Changed to double in all code. 
//typedef float smp_type;     // Results in 10.5% CPU usage
extern double MarkFreq;
extern double SpaceFreq;

#define LoopSenseMark (0==LOOP_SENSE_Get()) // If loop mark, sense opto output low



void PrintString(char *string);     // Send the string to UART1 to USB.
void PrintChar(char data);          // Print a character
 


#ifdef	__cplusplus
extern "C" {
#endif

#endif    