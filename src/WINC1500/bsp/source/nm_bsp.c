#include <xc.h>        // Gives access to all PIC32MZ register bits like IFS0bits and IEC0bits
#include <stdint.h>
#include "bsp/include/nm_bsp.h"

// Declare the external hardware functions you already wrote in wf_mcu_driver_stub.c
extern void m2mStub_PinSet_CHIP_EN(uint8_t action);
extern void m2mStub_PinSet_RESET_N(uint8_t action);
extern void nm_bsp_sleep(uint32 u32TimeMsec);

// 1. Initialize the board hardware pins
// 1. Configure the physical pin directions and initial power state
sint8 nm_bsp_init(void)
{
  // 1. Explicitly turn off Change Notification (CN) for Port F
    CNCONFbits.ON = 0;   // Disable the entire Port F CN module entirely
    CNENFbits.CNIEF1 = 0; // Ensure RF1 specifically has individual CN disabled
    CNPUFbits.CNPUF1 = 0; // Disable internal pull-up on RF1
    CNPDFbits.CNPDF1 = 0; // Disable internal pull-down on RF1
    // 1. Map physical pin RF1 (RPF1) directly to External Interrupt 3 (INT3) Input
    INT3Rbits.INT3R = 0x04; 
    #ifdef ANSELF
      ANSELFbits.ANSF1 = 0; // Force RF1 to pure Digital mode
    #endif 
    TRISFbits.TRISF1 = 1; // Configure RF1 pin direction as an Input (WIFI_IRQn)
    // 3. Configure the Port E control line directions 
    TRISEbits.TRISE3 = 0;   // RESETn Output
    TRISEbits.TRISE4 = 0;   // WIFI_EN Output

    // 4. Execute the hardware reset sequence
    LATEbits.LATE4 = 0;     // WIFI_EN Low
    LATEbits.LATE3 = 0;     // RESETn Low
    nm_bsp_sleep(15);       

    LATEbits.LATE4 = 1;     // WIFI_EN High
    nm_bsp_sleep(15);       
    
    LATEbits.LATE3 = 1;     // RESETn High
    return 0;
}




// 2. Control the CHIP_ENABLE line (WIFI_EN on RE4)
void nm_bsp_pin_set_CHIP_ENABLE(uint8_t u8Val)
{
    LATEbits.LATE4 = (u8Val) ? 1 : 0;
}

// 3. Control the RESET line (RESETn on RE3)
void nm_bsp_pin_set_RESET(uint8_t u8Val)
{
    LATEbits.LATE3 = (u8Val) ? 1 : 0;
}

// 4. Register the external interrupt callback
static tpfNmBspIsr g_pfIsr = NULL;
void nm_bsp_register_isr(tpfNmBspIsr pfIsr)
{
    g_pfIsr = pfIsr;
}

// 5. This is called when your PIC32 external interrupt pin (INT3) fires
// Inside your ISR or inside nm_bsp.c:
void m2m_wifi_asm_isr(void)
{
    // If the core 19.4.4 driver has registered its active HIF handler, 
    // execute it directly to allow the driver to manage its internal lock flags!
    if (g_pfIsr != NULL) {
        g_pfIsr(); 
    }
}


// 6. Reset the board metrics (Can be left empty)
void nm_bsp_reset(void)
{
    m2mStub_PinSet_RESET_N(0);
    nm_bsp_sleep(10);
    m2mStub_PinSet_RESET_N(1);
}


// Enable or disable the physical INT3 interrupt line on the PIC32MZ
void nm_bsp_interrupt_ctrl(uint8_t u8Enable)
{
    // Leave this completely empty! 
    // This safely blocks the 19.4.4 driver from re-enabling the IEC0 hardware gates.
}

#include <stdio.h>
#include <stdarg.h>

// Explicitly declare standard printf so it bypasses any main.h macro rewrites
extern int printf(const char *format, ...);

void dprintf(const char *format, ...)
{
    va_list args;
    va_start(args, format);
    
    // Use vprintf to handle the variable arguments format natively 
    // and pass the text straight to your active system console stream
    vprintf(format, args);
    
    va_end(args);
}
