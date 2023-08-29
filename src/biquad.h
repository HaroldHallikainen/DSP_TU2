#ifndef BIQUAD_H
#define BIQUAD_H

#include <math.h>
#include <stdlib.h>

#ifndef M_LN2
#define M_LN2 0.69314718055994530942
#endif

#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif

/* whatever sample type you want */
#include "main.h"       // Project-wide definition of smp_type
// typedef double smp_type;


/* this holds the data required to update samples thru a filter */
typedef struct {
    double a0, a1, a2, a3, a4;
    double x1, x2, y1, y2;
}
biquad;

extern double BiQuad(const double sample, biquad* const b);
extern biquad *BiQuad_new(const int type, double dbGain, /* gain of filter */
                          const double freq,             /* center frequency */
                          const double srate,            /* sampling rate */
                          const double Q);       /* filter Q . Was bandwidth in octaves */

extern void BiQuad_modify(biquad* const b, const int type, const double dbGain, const double freq,
		   const double srate, const double Q);


/* filter types */
enum FILT_TYPE {
    LPF, /* low pass filter */
    HPF, /* High pass filter */
    BPF, /* band pass filter */
    NOTCH, /* Notch Filter */
    PEQ, /* Peaking band EQ filter */
    LSH, /* Low shelf filter */
    HSH /* High shelf filter */
};

#endif

