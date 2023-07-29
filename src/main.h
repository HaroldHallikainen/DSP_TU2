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

typedef double smp_type; // Results in 11.5% CPU usage
//typedef float smp_type;     // Results in 10.5% CPU usage
extern smp_type MarkFreq;
extern smp_type SpaceFreq;

#define LoopSenseMark (0==LOOP_SENSE_Get()) // If loop mark, sense opto output low




#ifdef	__cplusplus
extern "C" {
#endif

#endif    