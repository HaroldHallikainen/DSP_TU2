
/*
 
void _reset(void);

void  __attribute__((naked)) __attribute__ ((section (".reset.startup"))) __attribute__ ((address(0xbfc00000)))   BootLoader(void){
  // Attribute naked creates no prolog or epilogue code.
  // Put this function at start of boot flash
  _reset();
}

*/

