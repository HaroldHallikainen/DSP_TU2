/**
 * @file biquad.c
 *
 * Simple implementation of Biquad filters -- Tom St Denis
 *
 * Based on the work
 *
 *   Cookbook formulae for audio EQ biquad filter coefficients
 *   ---------------------------------------------------------
 *   by Robert Bristow-Johnson, pbjrbj@viconet.com  a.k.a. robert@audioheads.com
 *
 * Available on the web at
 *    http://www.musicdsp.org/files/biquad.c
 *
 * Enjoy.
 *
 * This work is hereby placed in the public domain for all purposes, whether
 * commercial, free [as in speech] or educational, etc.  Use the code and please
 * give me credit if you wish.
 *
 * Tom St Denis -- http://tomstdenis.home.dhs.org
 *
 * See also: http://musicweb.ucsd.edu/~tre/biquad.pdf
 *
 */
#include "biquad.h"
#include "main.h" // access to PrintString

/* Computes a BiQuad filter on a sample */
double BiQuad(const double sample, biquad* const b)
{
  double result;

  /* compute result */
  result = b->a0 * sample + b->a1 * b->x1 + b->a2 * b->x2 -
    b->a3 * b->y1 - b->a4 * b->y2;

  /* shift x1 to x2, sample to x1 */
  b->x2 = b->x1;
  b->x1 = sample;

  /* shift y1 to y2, result to y1 */
  b->y2 = b->y1;
  b->y1 = result;

  return result;
}

/* sets up a BiQuad Filter */
/* Note that dbGain is only used when the type is LSH or HSH */
biquad *BiQuad_new(const int type, const double dbGain, const double freq,
		   const double srate, const double Q)
{
  biquad *b;          // Create pointer to biquad

  b = malloc(sizeof(biquad)); // allocate RAM for biquad
  if (b == NULL){              // Get out if malloc fails
    PrintString("Insufficient heap space in BiQuad_new\r\n");
    return NULL;
  }  
  BiQuad_modify(b, type, dbGain, freq, srate, Q); // Go set up biquad b
   /* zero initial samples */
  b->x1 = b->x2 = 0;
  b->y1 = b->y2 = 0;
  return b;
}

/* Modifies an existing BiQuad filter. */
/* Note that dbGain is only used when the type is LSH or HSH */
// Pointer to biquad struct is first parameter.
void BiQuad_modify(biquad* const b, const int type, const double dbGain, const double freq,
		   const double srate, const double Q)
{
  double A, omega, sn, cs, alpha, beta;
  double a0=0.0, a1=0.0, a2=0.0, b0=0.0, b1=0.0, b2=0.0;  // Get rid of "may be uninitialized" warning
  /* setup variables */
  A = pow(10, dbGain /40);
  omega = 2 * M_PI * freq /srate;
  sn = sin(omega);
  cs = cos(omega);
  // alpha = sn * sinh(M_LN2 /2 * bandwidth * omega /sn);
  alpha = sn / (2*Q); // From https://github.com/hosackm/BiquadFilter/blob/master/Biquad.c
  beta = sqrt(A + A);

  switch (type) {
  case LPF:
    b0 = (1 - cs) /2;
    b1 = 1 - cs;
    b2 = (1 - cs) /2;
    a0 = 1 + alpha;
    a1 = -2 * cs;
    a2 = 1 - alpha;
    break;
  case HPF:
    b0 = (1 + cs) /2;
    b1 = -(1 + cs);
    b2 = (1 + cs) /2;
    a0 = 1 + alpha;
    a1 = -2 * cs;
    a2 = 1 - alpha;
    break;
  case BPF:
    b0 = alpha;
    b1 = 0;
    b2 = -alpha;
    a0 = 1 + alpha;
    a1 = -2 * cs;
    a2 = 1 - alpha;
    break;
  case NOTCH:
    b0 = 1;
    b1 = -2 * cs;
    b2 = 1;
    a0 = 1 + alpha;
    a1 = -2 * cs;
    a2 = 1 - alpha;
    break;
  case PEQ:
    b0 = 1 + (alpha * A);
    b1 = -2 * cs;
    b2 = 1 - (alpha * A);
    a0 = 1 + (alpha /A);
    a1 = -2 * cs;
    a2 = 1 - (alpha /A);
    break;
  case LSH:
    b0 = A * ((A + 1) - (A - 1) * cs + beta * sn);
    b1 = 2 * A * ((A - 1) - (A + 1) * cs);
    b2 = A * ((A + 1) - (A - 1) * cs - beta * sn);
    a0 = (A + 1) + (A - 1) * cs + beta * sn;
    a1 = -2 * ((A - 1) + (A + 1) * cs);
    a2 = (A + 1) + (A - 1) * cs - beta * sn;
    break;
  case HSH:
    b0 = A * ((A + 1) + (A - 1) * cs + beta * sn);
    b1 = -2 * A * ((A - 1) + (A + 1) * cs);
    b2 = A * ((A + 1) + (A - 1) * cs - beta * sn);
    a0 = (A + 1) - (A - 1) * cs + beta * sn;
    a1 = 2 * ((A - 1) - (A + 1) * cs);
    a2 = (A + 1) - (A - 1) * cs - beta * sn;
    break;
  }

  /* precompute the coefficients */
  b->a0 = b0 /a0;
  b->a1 = b1 /a0;
  b->a2 = b2 /a0;
  b->a3 = a1 /a0;
  b->a4 = a2 /a0;

}

