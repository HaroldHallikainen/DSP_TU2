/* 
 * File:   PwmAudio.h
 * Author: Harold_Win7
 *
 * Created on February 9, 2022, 9:28 PM
 */

#ifndef PWMAUDIO_H
#define	PWMAUDIO_H

void AudioPwmSet(double sample); // Pass in audio sample as -1.0 to +1.0 to set duty cycle to 0% to 100%

#ifdef	__cplusplus
extern "C" {
#endif




#ifdef	__cplusplus
}
#endif

#endif	/* PWMAUDIO_H */