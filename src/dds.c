// DDS.c - Direct Digital Synthesis

#include <math.h>
#include "main.h"   // typedef smp_type


const smp_type pi2=2.0*(smp_type)acos(-1.0);       // Precalculate 2pi
static smp_type DdsRadiansPerSample=0;

void DdsFreqSet(smp_type freq){
    // Set DdsRadiansPerSample so there is less math in DdsNextSample
    DdsRadiansPerSample=freq*pi2/8000.0;
}

smp_type DdsNextSample(void){
    static smp_type angle=0;
    angle+=DdsRadiansPerSample;
    while(angle>=pi2) angle-=pi2;
    return (smp_type)sin((double)angle);
}

