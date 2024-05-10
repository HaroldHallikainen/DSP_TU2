// MarkHold.h

#ifndef MarkHold_h
#define MarkHold_h

void MarkHoldInit(void);    // Initialize filters for mark hold
double MarkHold(double discrim);  // Pass in discriminator. Compare HF noise to LF noise. If HF noise above 
                            // threshold, return 1.0 (mark). Otherwise, return discrim.




#endif

