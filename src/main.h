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

typedef double smp_type; // Results in 11.5% CPU usage
//typedef float smp_type;     // Results in 10.5% CPU usage
extern smp_type MarkFreq;
extern smp_type SpaceFreq;




#ifdef	__cplusplus
extern "C" {
#endif

#endif    