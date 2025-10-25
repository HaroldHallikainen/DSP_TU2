// Setup filters and update based on button presses.

#ifndef filters_h
#define Filters_f

#include "biquad.h"
#include "definitions.h"                // SYS function prototypes



// Globals 
#define NumBpf 2            // How many cascaded BPFs for mark or space 
// The Biquad Filters
extern biquad *MarkFilter[NumBpf]; // Audio BPF for mark (array of pointers for cascaded filters)
extern biquad *SpaceFilter[NumBpf]; // Audio BPF for space
extern biquad *MarkDataFilter;     // Mark LPF after absolute value "full wave rectification" 
extern biquad *SpaceDataFilter;
extern biquad *InputBpf;
extern biquad *MsLevelLpf;         // Low pass filter used to get the level of both mark and space    
extern double MarkFreq, SpaceFreq;
extern biquad *LoopSenseLpf;       // Debounce the loop sense


void FiltersInit(void);      // Create and put initial settings in filters.
void PollShiftMarkHi(void);  // See if we need to reload filters due to a change in shift or MarkHi
void UpdateDemodFilters();   // Update all filters and Mark/Space frequencies used by DDS



#endif

