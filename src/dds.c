// DDS.c - Direct Digital Synthesis

#include <math.h>
#include "main.h"   


const double pi2=2.0*acos(-1.0);       // Precalculate 2pi
static double DdsRadiansPerSample=0;

void DdsFreqSet(double freq){
    // Set DdsRadiansPerSample so there is less math in DdsNextSample
    DdsRadiansPerSample=freq*pi2/8000.0;
}

double DdsNextSample(void){
    static double angle=0;
    angle+=DdsRadiansPerSample;
    while(angle>=pi2) angle-=pi2;
    return sin(angle);
}

