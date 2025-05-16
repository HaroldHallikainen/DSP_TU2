#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-DSP_TU2.mk)" "nbproject/Makefile-local-DSP_TU2.mk"
include nbproject/Makefile-local-DSP_TU2.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=DSP_TU2
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c ../src/config/DSP_TU2/peripheral/clk/plib_clk.c ../src/config/DSP_TU2/peripheral/evic/plib_evic.c ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c ../src/config/DSP_TU2/stdio/xc32_monitor.c ../src/config/DSP_TU2/initialization.c ../src/config/DSP_TU2/interrupts.c ../src/config/DSP_TU2/exceptions.c ../src/winc1500/src/wf_asic.c ../src/winc1500/src/wf_hif.c ../src/winc1500/src/wf_ota.c ../src/winc1500/src/wf_socket.c ../src/winc1500/src/wf_spi.c ../src/winc1500/src/wf_spi_flash.c ../src/winc1500/src/wf_utils.c ../src/winc1500/src/wf_wifi.c ../src/winc1500/wf_mcu_driver_stub.c ../src/winc1500/socket_event_stub.c ../src/winc1500/wifi_event_stub.c ../src/winc1500/ota_event_stub.c ../src/WiFiInit.c ../src/WifiPoll.c ../src/main.c ../src/AfskGen.c ../src/BaudotUart.c ../src/DynamicThreshold.c ../src/PwmAudioOut.c ../src/agc.c ../src/biquad.c ../src/dds.c ../src/display.c ../src/fifo16.c ../src/xyScope.c ../src/PollSwitchesLeds.c ../src/PollEncoder.c ../src/UserConfig.c ../src/filters.c ../src/AutostartKos.c ../src/ExtFlash.c ../src/CommandInterpreter.c ../src/fifo8.c ../src/Unifont.c ../src/menu.c ../src/PowerLineNoise.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/302168295/plib_adchs.o ${OBJECTDIR}/_ext/255064926/plib_clk.o ${OBJECTDIR}/_ext/682852657/plib_evic.o ${OBJECTDIR}/_ext/682798829/plib_gpio.o ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o ${OBJECTDIR}/_ext/255081301/plib_tmr2.o ${OBJECTDIR}/_ext/682395886/plib_uart1.o ${OBJECTDIR}/_ext/255083907/plib_wdt.o ${OBJECTDIR}/_ext/775482278/xc32_monitor.o ${OBJECTDIR}/_ext/1994557280/initialization.o ${OBJECTDIR}/_ext/1994557280/interrupts.o ${OBJECTDIR}/_ext/1994557280/exceptions.o ${OBJECTDIR}/_ext/1360932806/wf_asic.o ${OBJECTDIR}/_ext/1360932806/wf_hif.o ${OBJECTDIR}/_ext/1360932806/wf_ota.o ${OBJECTDIR}/_ext/1360932806/wf_socket.o ${OBJECTDIR}/_ext/1360932806/wf_spi.o ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o ${OBJECTDIR}/_ext/1360932806/wf_utils.o ${OBJECTDIR}/_ext/1360932806/wf_wifi.o ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o ${OBJECTDIR}/_ext/1236603035/socket_event_stub.o ${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o ${OBJECTDIR}/_ext/1236603035/ota_event_stub.o ${OBJECTDIR}/_ext/1360937237/WiFiInit.o ${OBJECTDIR}/_ext/1360937237/WifiPoll.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/AfskGen.o ${OBJECTDIR}/_ext/1360937237/BaudotUart.o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ${OBJECTDIR}/_ext/1360937237/agc.o ${OBJECTDIR}/_ext/1360937237/biquad.o ${OBJECTDIR}/_ext/1360937237/dds.o ${OBJECTDIR}/_ext/1360937237/display.o ${OBJECTDIR}/_ext/1360937237/fifo16.o ${OBJECTDIR}/_ext/1360937237/xyScope.o ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o ${OBJECTDIR}/_ext/1360937237/PollEncoder.o ${OBJECTDIR}/_ext/1360937237/UserConfig.o ${OBJECTDIR}/_ext/1360937237/filters.o ${OBJECTDIR}/_ext/1360937237/AutostartKos.o ${OBJECTDIR}/_ext/1360937237/ExtFlash.o ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o ${OBJECTDIR}/_ext/1360937237/fifo8.o ${OBJECTDIR}/_ext/1360937237/Unifont.o ${OBJECTDIR}/_ext/1360937237/menu.o ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/302168295/plib_adchs.o.d ${OBJECTDIR}/_ext/255064926/plib_clk.o.d ${OBJECTDIR}/_ext/682852657/plib_evic.o.d ${OBJECTDIR}/_ext/682798829/plib_gpio.o.d ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d ${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d ${OBJECTDIR}/_ext/682395886/plib_uart1.o.d ${OBJECTDIR}/_ext/255083907/plib_wdt.o.d ${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d ${OBJECTDIR}/_ext/1994557280/initialization.o.d ${OBJECTDIR}/_ext/1994557280/interrupts.o.d ${OBJECTDIR}/_ext/1994557280/exceptions.o.d ${OBJECTDIR}/_ext/1360932806/wf_asic.o.d ${OBJECTDIR}/_ext/1360932806/wf_hif.o.d ${OBJECTDIR}/_ext/1360932806/wf_ota.o.d ${OBJECTDIR}/_ext/1360932806/wf_socket.o.d ${OBJECTDIR}/_ext/1360932806/wf_spi.o.d ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o.d ${OBJECTDIR}/_ext/1360932806/wf_utils.o.d ${OBJECTDIR}/_ext/1360932806/wf_wifi.o.d ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o.d ${OBJECTDIR}/_ext/1236603035/socket_event_stub.o.d ${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o.d ${OBJECTDIR}/_ext/1236603035/ota_event_stub.o.d ${OBJECTDIR}/_ext/1360937237/WiFiInit.o.d ${OBJECTDIR}/_ext/1360937237/WifiPoll.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/AfskGen.o.d ${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d ${OBJECTDIR}/_ext/1360937237/agc.o.d ${OBJECTDIR}/_ext/1360937237/biquad.o.d ${OBJECTDIR}/_ext/1360937237/dds.o.d ${OBJECTDIR}/_ext/1360937237/display.o.d ${OBJECTDIR}/_ext/1360937237/fifo16.o.d ${OBJECTDIR}/_ext/1360937237/xyScope.o.d ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d ${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d ${OBJECTDIR}/_ext/1360937237/UserConfig.o.d ${OBJECTDIR}/_ext/1360937237/filters.o.d ${OBJECTDIR}/_ext/1360937237/AutostartKos.o.d ${OBJECTDIR}/_ext/1360937237/ExtFlash.o.d ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o.d ${OBJECTDIR}/_ext/1360937237/fifo8.o.d ${OBJECTDIR}/_ext/1360937237/Unifont.o.d ${OBJECTDIR}/_ext/1360937237/menu.o.d ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/302168295/plib_adchs.o ${OBJECTDIR}/_ext/255064926/plib_clk.o ${OBJECTDIR}/_ext/682852657/plib_evic.o ${OBJECTDIR}/_ext/682798829/plib_gpio.o ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o ${OBJECTDIR}/_ext/255081301/plib_tmr2.o ${OBJECTDIR}/_ext/682395886/plib_uart1.o ${OBJECTDIR}/_ext/255083907/plib_wdt.o ${OBJECTDIR}/_ext/775482278/xc32_monitor.o ${OBJECTDIR}/_ext/1994557280/initialization.o ${OBJECTDIR}/_ext/1994557280/interrupts.o ${OBJECTDIR}/_ext/1994557280/exceptions.o ${OBJECTDIR}/_ext/1360932806/wf_asic.o ${OBJECTDIR}/_ext/1360932806/wf_hif.o ${OBJECTDIR}/_ext/1360932806/wf_ota.o ${OBJECTDIR}/_ext/1360932806/wf_socket.o ${OBJECTDIR}/_ext/1360932806/wf_spi.o ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o ${OBJECTDIR}/_ext/1360932806/wf_utils.o ${OBJECTDIR}/_ext/1360932806/wf_wifi.o ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o ${OBJECTDIR}/_ext/1236603035/socket_event_stub.o ${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o ${OBJECTDIR}/_ext/1236603035/ota_event_stub.o ${OBJECTDIR}/_ext/1360937237/WiFiInit.o ${OBJECTDIR}/_ext/1360937237/WifiPoll.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/AfskGen.o ${OBJECTDIR}/_ext/1360937237/BaudotUart.o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ${OBJECTDIR}/_ext/1360937237/agc.o ${OBJECTDIR}/_ext/1360937237/biquad.o ${OBJECTDIR}/_ext/1360937237/dds.o ${OBJECTDIR}/_ext/1360937237/display.o ${OBJECTDIR}/_ext/1360937237/fifo16.o ${OBJECTDIR}/_ext/1360937237/xyScope.o ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o ${OBJECTDIR}/_ext/1360937237/PollEncoder.o ${OBJECTDIR}/_ext/1360937237/UserConfig.o ${OBJECTDIR}/_ext/1360937237/filters.o ${OBJECTDIR}/_ext/1360937237/AutostartKos.o ${OBJECTDIR}/_ext/1360937237/ExtFlash.o ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o ${OBJECTDIR}/_ext/1360937237/fifo8.o ${OBJECTDIR}/_ext/1360937237/Unifont.o ${OBJECTDIR}/_ext/1360937237/menu.o ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o

# Source Files
SOURCEFILES=../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c ../src/config/DSP_TU2/peripheral/clk/plib_clk.c ../src/config/DSP_TU2/peripheral/evic/plib_evic.c ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c ../src/config/DSP_TU2/stdio/xc32_monitor.c ../src/config/DSP_TU2/initialization.c ../src/config/DSP_TU2/interrupts.c ../src/config/DSP_TU2/exceptions.c ../src/winc1500/src/wf_asic.c ../src/winc1500/src/wf_hif.c ../src/winc1500/src/wf_ota.c ../src/winc1500/src/wf_socket.c ../src/winc1500/src/wf_spi.c ../src/winc1500/src/wf_spi_flash.c ../src/winc1500/src/wf_utils.c ../src/winc1500/src/wf_wifi.c ../src/winc1500/wf_mcu_driver_stub.c ../src/winc1500/socket_event_stub.c ../src/winc1500/wifi_event_stub.c ../src/winc1500/ota_event_stub.c ../src/WiFiInit.c ../src/WifiPoll.c ../src/main.c ../src/AfskGen.c ../src/BaudotUart.c ../src/DynamicThreshold.c ../src/PwmAudioOut.c ../src/agc.c ../src/biquad.c ../src/dds.c ../src/display.c ../src/fifo16.c ../src/xyScope.c ../src/PollSwitchesLeds.c ../src/PollEncoder.c ../src/UserConfig.c ../src/filters.c ../src/AutostartKos.c ../src/ExtFlash.c ../src/CommandInterpreter.c ../src/fifo8.c ../src/Unifont.c ../src/menu.c ../src/PowerLineNoise.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-DSP_TU2.mk ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ0512EFE064
MP_LINKER_FILE_OPTION=,--script="..\src\app_mz.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/302168295/plib_adchs.o: ../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c  .generated_files/flags/DSP_TU2/67c627dcc71e44e6afd4e0403946c344be4d04a .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/302168295" 
	@${RM} ${OBJECTDIR}/_ext/302168295/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/302168295/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302168295/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/302168295/plib_adchs.o ../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/255064926/plib_clk.o: ../src/config/DSP_TU2/peripheral/clk/plib_clk.c  .generated_files/flags/DSP_TU2/dceedf449eb02046282d04bc3998293e2b07c3be .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/255064926" 
	@${RM} ${OBJECTDIR}/_ext/255064926/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/255064926/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255064926/plib_clk.o.d" -o ${OBJECTDIR}/_ext/255064926/plib_clk.o ../src/config/DSP_TU2/peripheral/clk/plib_clk.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/682852657/plib_evic.o: ../src/config/DSP_TU2/peripheral/evic/plib_evic.c  .generated_files/flags/DSP_TU2/1a1db2c7acdea77b4b72acb5e9639d3b6c588e5e .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/682852657" 
	@${RM} ${OBJECTDIR}/_ext/682852657/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/682852657/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682852657/plib_evic.o.d" -o ${OBJECTDIR}/_ext/682852657/plib_evic.o ../src/config/DSP_TU2/peripheral/evic/plib_evic.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/682798829/plib_gpio.o: ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c  .generated_files/flags/DSP_TU2/f19c555e0e9dcd270e3cdce9961802ff00ad1b6e .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/682798829" 
	@${RM} ${OBJECTDIR}/_ext/682798829/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/682798829/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682798829/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/682798829/plib_gpio.o ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/682572869/plib_ocmp1.o: ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c  .generated_files/flags/DSP_TU2/5137e8cb5f10ab246a191f10408ec0196665122f .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/682572869" 
	@${RM} ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d" -o ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/957679836/plib_spi1_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/DSP_TU2/9fe566fe2883dfacbde9e5680754228cd7fc899 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/957679836/plib_spi3_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c  .generated_files/flags/DSP_TU2/e17cd26478dec906d030589f5424cdbfc23e7b99 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/957679836/plib_spi2_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/flags/DSP_TU2/1c54b5b3ac93ffc52ccdc711f9a8d41863d4da0a .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/255081301/plib_tmr2.o: ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/DSP_TU2/1687bcee5971f8e7a3f8c7e2bfdce0b7f764fa95 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/255081301" 
	@${RM} ${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/255081301/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/255081301/plib_tmr2.o ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/682395886/plib_uart1.o: ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c  .generated_files/flags/DSP_TU2/5ee78e269cbd5ccec3ce0a52ec10d14c81916197 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/682395886" 
	@${RM} ${OBJECTDIR}/_ext/682395886/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/682395886/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682395886/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/682395886/plib_uart1.o ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/255083907/plib_wdt.o: ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c  .generated_files/flags/DSP_TU2/eddb7396026d24ad58a614172bee1e3a54db90ad .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/255083907" 
	@${RM} ${OBJECTDIR}/_ext/255083907/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/255083907/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255083907/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/255083907/plib_wdt.o ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/775482278/xc32_monitor.o: ../src/config/DSP_TU2/stdio/xc32_monitor.c  .generated_files/flags/DSP_TU2/e429dc36d9d9ef009ce65a990c2c1b1df0f4b553 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/775482278" 
	@${RM} ${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/775482278/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/775482278/xc32_monitor.o ../src/config/DSP_TU2/stdio/xc32_monitor.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1994557280/initialization.o: ../src/config/DSP_TU2/initialization.c  .generated_files/flags/DSP_TU2/cfabf236b10ef9d78e36c5eb2b9482de68fc5631 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/initialization.o.d" -o ${OBJECTDIR}/_ext/1994557280/initialization.o ../src/config/DSP_TU2/initialization.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1994557280/interrupts.o: ../src/config/DSP_TU2/interrupts.c  .generated_files/flags/DSP_TU2/55f7267b4a88741ecd8f40f9ef5f8979677cdd02 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/interrupts.o.d" -o ${OBJECTDIR}/_ext/1994557280/interrupts.o ../src/config/DSP_TU2/interrupts.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1994557280/exceptions.o: ../src/config/DSP_TU2/exceptions.c  .generated_files/flags/DSP_TU2/84e52e0626b96eadd4c1a23f504d1b036cf09558 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/exceptions.o.d" -o ${OBJECTDIR}/_ext/1994557280/exceptions.o ../src/config/DSP_TU2/exceptions.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360932806/wf_asic.o: ../src/winc1500/src/wf_asic.c  .generated_files/flags/DSP_TU2/2641805b799b797f44d3316d76aadc7a4b0279f8 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_asic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_asic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_asic.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_asic.o ../src/winc1500/src/wf_asic.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360932806/wf_hif.o: ../src/winc1500/src/wf_hif.c  .generated_files/flags/DSP_TU2/8d2263e58304535c9edb9abe5ca428c2c999d5e9 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_hif.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_hif.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_hif.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_hif.o ../src/winc1500/src/wf_hif.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360932806/wf_ota.o: ../src/winc1500/src/wf_ota.c  .generated_files/flags/DSP_TU2/bb7527a17db89166dbadb4531689456c4f98b793 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_ota.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_ota.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_ota.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_ota.o ../src/winc1500/src/wf_ota.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360932806/wf_socket.o: ../src/winc1500/src/wf_socket.c  .generated_files/flags/DSP_TU2/11170e6697759144ef54c511e36cabbf97ed90fc .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_socket.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_socket.o ../src/winc1500/src/wf_socket.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360932806/wf_spi.o: ../src/winc1500/src/wf_spi.c  .generated_files/flags/DSP_TU2/ffb8d92ebc834c81453ae6fe46c4074d1a0c01a6 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_spi.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_spi.o ../src/winc1500/src/wf_spi.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o: ../src/winc1500/src/wf_spi_flash.c  .generated_files/flags/DSP_TU2/c1c0e273b48f31648fd975379b19816e15c2e6a4 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o ../src/winc1500/src/wf_spi_flash.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360932806/wf_utils.o: ../src/winc1500/src/wf_utils.c  .generated_files/flags/DSP_TU2/d3cd46e88194eee6aa9558636d86d188adf030e5 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_utils.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_utils.o ../src/winc1500/src/wf_utils.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360932806/wf_wifi.o: ../src/winc1500/src/wf_wifi.c  .generated_files/flags/DSP_TU2/cad61e306cd13579fdf8ad95f021b747e50167a5 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_wifi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_wifi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_wifi.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_wifi.o ../src/winc1500/src/wf_wifi.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o: ../src/winc1500/wf_mcu_driver_stub.c  .generated_files/flags/DSP_TU2/241f9af8d616ce48ac108a4fe6dec5b4883907e6 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1236603035" 
	@${RM} ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o.d" -o ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o ../src/winc1500/wf_mcu_driver_stub.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1236603035/socket_event_stub.o: ../src/winc1500/socket_event_stub.c  .generated_files/flags/DSP_TU2/b4852226012ac1b842ef43e40e4601b095ef54e9 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1236603035" 
	@${RM} ${OBJECTDIR}/_ext/1236603035/socket_event_stub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1236603035/socket_event_stub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1236603035/socket_event_stub.o.d" -o ${OBJECTDIR}/_ext/1236603035/socket_event_stub.o ../src/winc1500/socket_event_stub.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o: ../src/winc1500/wifi_event_stub.c  .generated_files/flags/DSP_TU2/edd1f69b49004748682957447370b1c4e161a549 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1236603035" 
	@${RM} ${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o.d" -o ${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o ../src/winc1500/wifi_event_stub.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1236603035/ota_event_stub.o: ../src/winc1500/ota_event_stub.c  .generated_files/flags/DSP_TU2/3b5febf4b296319482b8a341fc8e7c32ba6e6791 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1236603035" 
	@${RM} ${OBJECTDIR}/_ext/1236603035/ota_event_stub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1236603035/ota_event_stub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1236603035/ota_event_stub.o.d" -o ${OBJECTDIR}/_ext/1236603035/ota_event_stub.o ../src/winc1500/ota_event_stub.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/WiFiInit.o: ../src/WiFiInit.c  .generated_files/flags/DSP_TU2/477646359a8f7f88d7ecd48d67f0c5afbe9dc792 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WiFiInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WiFiInit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/WiFiInit.o.d" -o ${OBJECTDIR}/_ext/1360937237/WiFiInit.o ../src/WiFiInit.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/WifiPoll.o: ../src/WifiPoll.c  .generated_files/flags/DSP_TU2/6335bdaaeeea23e2299b906bf8a860927e7122e2 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WifiPoll.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WifiPoll.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/WifiPoll.o.d" -o ${OBJECTDIR}/_ext/1360937237/WifiPoll.o ../src/WifiPoll.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/DSP_TU2/aeaecbacfee5b564fc5037c6bef461325656fc7 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/AfskGen.o: ../src/AfskGen.c  .generated_files/flags/DSP_TU2/8686a9f01ef0f1e175fbdb93753654bf748ea1b5 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AfskGen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AfskGen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AfskGen.o.d" -o ${OBJECTDIR}/_ext/1360937237/AfskGen.o ../src/AfskGen.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/BaudotUart.o: ../src/BaudotUart.c  .generated_files/flags/DSP_TU2/c99b1cb6f966968aeb43a1bbaff41579b6cca809 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BaudotUart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d" -o ${OBJECTDIR}/_ext/1360937237/BaudotUart.o ../src/BaudotUart.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o: ../src/DynamicThreshold.c  .generated_files/flags/DSP_TU2/ab6147b02a0289b937c88634d0dec140084479a9 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d" -o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ../src/DynamicThreshold.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o: ../src/PwmAudioOut.c  .generated_files/flags/DSP_TU2/c26b8888b9c38c631655960a17eafce80c64cc60 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d" -o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ../src/PwmAudioOut.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/agc.o: ../src/agc.c  .generated_files/flags/DSP_TU2/fe44207d540b8e9a2e849b2aa95a3ace9fe5c063 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/agc.o.d" -o ${OBJECTDIR}/_ext/1360937237/agc.o ../src/agc.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/biquad.o: ../src/biquad.c  .generated_files/flags/DSP_TU2/42cac2a64075113dc0b648334802b694d8386984 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/biquad.o.d" -o ${OBJECTDIR}/_ext/1360937237/biquad.o ../src/biquad.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/dds.o: ../src/dds.c  .generated_files/flags/DSP_TU2/da9c8e554e2cbbe71be859dc29e171909b8ad882 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dds.o.d" -o ${OBJECTDIR}/_ext/1360937237/dds.o ../src/dds.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/display.o: ../src/display.c  .generated_files/flags/DSP_TU2/293aee9ee5ad5abefe0791c28fe875d82549ba87 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/display.o.d" -o ${OBJECTDIR}/_ext/1360937237/display.o ../src/display.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/fifo16.o: ../src/fifo16.c  .generated_files/flags/DSP_TU2/5a5db3c5351a2ad2ca90308e3e134348b78d858b .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fifo16.o.d" -o ${OBJECTDIR}/_ext/1360937237/fifo16.o ../src/fifo16.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/xyScope.o: ../src/xyScope.c  .generated_files/flags/DSP_TU2/df8fee02a4f1e8a6bf07ce88d97c5d0f5df6a641 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/xyScope.o.d" -o ${OBJECTDIR}/_ext/1360937237/xyScope.o ../src/xyScope.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o: ../src/PollSwitchesLeds.c  .generated_files/flags/DSP_TU2/b53cba0cfcd6928912f06677a9e03eb0497b78e6 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d" -o ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o ../src/PollSwitchesLeds.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/PollEncoder.o: ../src/PollEncoder.c  .generated_files/flags/DSP_TU2/31d16618f7c62ab932ba848529f8c82a241a130f .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollEncoder.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d" -o ${OBJECTDIR}/_ext/1360937237/PollEncoder.o ../src/PollEncoder.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/UserConfig.o: ../src/UserConfig.c  .generated_files/flags/DSP_TU2/6be1d3f970fdd53b90039fd1bb9073847d29d27d .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UserConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UserConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/UserConfig.o.d" -o ${OBJECTDIR}/_ext/1360937237/UserConfig.o ../src/UserConfig.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/filters.o: ../src/filters.c  .generated_files/flags/DSP_TU2/9f9c01ad9bfd85c5548927e0d17b0b9c66d6a496 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/filters.o.d" -o ${OBJECTDIR}/_ext/1360937237/filters.o ../src/filters.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/AutostartKos.o: ../src/AutostartKos.c  .generated_files/flags/DSP_TU2/1c3fce2e878d9d816dc2a561167df7da2b52efa0 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AutostartKos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AutostartKos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AutostartKos.o.d" -o ${OBJECTDIR}/_ext/1360937237/AutostartKos.o ../src/AutostartKos.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/ExtFlash.o: ../src/ExtFlash.c  .generated_files/flags/DSP_TU2/4744d9f80989b269f632035170d572bce8d6f2a4 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ExtFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ExtFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ExtFlash.o.d" -o ${OBJECTDIR}/_ext/1360937237/ExtFlash.o ../src/ExtFlash.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o: ../src/CommandInterpreter.c  .generated_files/flags/DSP_TU2/a0edf416f6f5fd37092ff027a30e6729f51ad3a6 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o.d" -o ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o ../src/CommandInterpreter.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/fifo8.o: ../src/fifo8.c  .generated_files/flags/DSP_TU2/e6b189b95c98a344948d377d284e843f4ee4c91d .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fifo8.o.d" -o ${OBJECTDIR}/_ext/1360937237/fifo8.o ../src/fifo8.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/Unifont.o: ../src/Unifont.c  .generated_files/flags/DSP_TU2/e1008ba85cf3b78a956adb4e01a3a3e9946335f9 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Unifont.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Unifont.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Unifont.o.d" -o ${OBJECTDIR}/_ext/1360937237/Unifont.o ../src/Unifont.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/menu.o: ../src/menu.c  .generated_files/flags/DSP_TU2/e8980c3f5cec47a38acf557987afabf3b087c9eb .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/menu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/menu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/menu.o.d" -o ${OBJECTDIR}/_ext/1360937237/menu.o ../src/menu.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o: ../src/PowerLineNoise.c  .generated_files/flags/DSP_TU2/7cd82e299e81679e23a1539dc9f1d7208b8a8c0b .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o.d" -o ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o ../src/PowerLineNoise.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/302168295/plib_adchs.o: ../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c  .generated_files/flags/DSP_TU2/a39a4ffb71dbfc83d38d2bf09e5048025602352f .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/302168295" 
	@${RM} ${OBJECTDIR}/_ext/302168295/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/302168295/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302168295/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/302168295/plib_adchs.o ../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/255064926/plib_clk.o: ../src/config/DSP_TU2/peripheral/clk/plib_clk.c  .generated_files/flags/DSP_TU2/c799284fdfe3f9711ed84de8bbcff62a397ebcdf .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/255064926" 
	@${RM} ${OBJECTDIR}/_ext/255064926/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/255064926/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255064926/plib_clk.o.d" -o ${OBJECTDIR}/_ext/255064926/plib_clk.o ../src/config/DSP_TU2/peripheral/clk/plib_clk.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/682852657/plib_evic.o: ../src/config/DSP_TU2/peripheral/evic/plib_evic.c  .generated_files/flags/DSP_TU2/40cd6aa786c9d45b06ed2a098eb81315a0f83417 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/682852657" 
	@${RM} ${OBJECTDIR}/_ext/682852657/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/682852657/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682852657/plib_evic.o.d" -o ${OBJECTDIR}/_ext/682852657/plib_evic.o ../src/config/DSP_TU2/peripheral/evic/plib_evic.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/682798829/plib_gpio.o: ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c  .generated_files/flags/DSP_TU2/aa7c2a63b67bfe9f3942655f57f39b297e4c0247 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/682798829" 
	@${RM} ${OBJECTDIR}/_ext/682798829/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/682798829/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682798829/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/682798829/plib_gpio.o ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/682572869/plib_ocmp1.o: ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c  .generated_files/flags/DSP_TU2/732f02f626c7821c2951248747b20a5e05bbd4ca .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/682572869" 
	@${RM} ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d" -o ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/957679836/plib_spi1_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/DSP_TU2/fc1d1c590b6695adace2cbda5e3dde1707ab247a .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/957679836/plib_spi3_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c  .generated_files/flags/DSP_TU2/c73daf157b5756ca1dc0dfb0ed9e052fe57649fd .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/957679836/plib_spi2_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/flags/DSP_TU2/dc68f6cddfb517d506769dfc4106988d48f85d13 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/255081301/plib_tmr2.o: ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/DSP_TU2/ba317d4b167b37cc1613681c9519f63b1ace22b8 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/255081301" 
	@${RM} ${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/255081301/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/255081301/plib_tmr2.o ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/682395886/plib_uart1.o: ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c  .generated_files/flags/DSP_TU2/75e72345dff7b30f9db9d3fcc77b4f4e9cb5a40c .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/682395886" 
	@${RM} ${OBJECTDIR}/_ext/682395886/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/682395886/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682395886/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/682395886/plib_uart1.o ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/255083907/plib_wdt.o: ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c  .generated_files/flags/DSP_TU2/34fb646e3b5c5c0ce503570c8467e897bdea7680 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/255083907" 
	@${RM} ${OBJECTDIR}/_ext/255083907/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/255083907/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255083907/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/255083907/plib_wdt.o ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/775482278/xc32_monitor.o: ../src/config/DSP_TU2/stdio/xc32_monitor.c  .generated_files/flags/DSP_TU2/a7b7f3a0f2ae8d1f59ac2983bcb3554c6b879cdc .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/775482278" 
	@${RM} ${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/775482278/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/775482278/xc32_monitor.o ../src/config/DSP_TU2/stdio/xc32_monitor.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1994557280/initialization.o: ../src/config/DSP_TU2/initialization.c  .generated_files/flags/DSP_TU2/529f0ceb433cae6b00240a0dbea83a802ce18d8e .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/initialization.o.d" -o ${OBJECTDIR}/_ext/1994557280/initialization.o ../src/config/DSP_TU2/initialization.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1994557280/interrupts.o: ../src/config/DSP_TU2/interrupts.c  .generated_files/flags/DSP_TU2/853ac717013ec766b823f1ab25ba78ff42e0b119 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/interrupts.o.d" -o ${OBJECTDIR}/_ext/1994557280/interrupts.o ../src/config/DSP_TU2/interrupts.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1994557280/exceptions.o: ../src/config/DSP_TU2/exceptions.c  .generated_files/flags/DSP_TU2/9f6688e4291913243eac7796433a80f04ce03a3 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/exceptions.o.d" -o ${OBJECTDIR}/_ext/1994557280/exceptions.o ../src/config/DSP_TU2/exceptions.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360932806/wf_asic.o: ../src/winc1500/src/wf_asic.c  .generated_files/flags/DSP_TU2/43f9a6b62a54dd3e243277763f5b4bd5f10e7f56 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_asic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_asic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_asic.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_asic.o ../src/winc1500/src/wf_asic.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360932806/wf_hif.o: ../src/winc1500/src/wf_hif.c  .generated_files/flags/DSP_TU2/129c7e8fe949c1c22815b7ce319c6ff2e5ea4858 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_hif.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_hif.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_hif.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_hif.o ../src/winc1500/src/wf_hif.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360932806/wf_ota.o: ../src/winc1500/src/wf_ota.c  .generated_files/flags/DSP_TU2/7967061934e8740a141be125344e05933ec2d0ff .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_ota.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_ota.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_ota.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_ota.o ../src/winc1500/src/wf_ota.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360932806/wf_socket.o: ../src/winc1500/src/wf_socket.c  .generated_files/flags/DSP_TU2/69c988caf21ead58758d1957147597584c1e1371 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_socket.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_socket.o ../src/winc1500/src/wf_socket.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360932806/wf_spi.o: ../src/winc1500/src/wf_spi.c  .generated_files/flags/DSP_TU2/aabc1f2719cad126261b7e82444a7716ae9c7ae6 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_spi.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_spi.o ../src/winc1500/src/wf_spi.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o: ../src/winc1500/src/wf_spi_flash.c  .generated_files/flags/DSP_TU2/cdfb078d8c5aef788d68a42c105ba23ded17e216 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o ../src/winc1500/src/wf_spi_flash.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360932806/wf_utils.o: ../src/winc1500/src/wf_utils.c  .generated_files/flags/DSP_TU2/97fc293ca615810577acab775eb8ee07d6e2e162 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_utils.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_utils.o ../src/winc1500/src/wf_utils.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360932806/wf_wifi.o: ../src/winc1500/src/wf_wifi.c  .generated_files/flags/DSP_TU2/dac3571bee890478885104fa659c056f4c9826a .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_wifi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_wifi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_wifi.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_wifi.o ../src/winc1500/src/wf_wifi.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o: ../src/winc1500/wf_mcu_driver_stub.c  .generated_files/flags/DSP_TU2/1431ff30d093cc5c10f00ef73795942791021cc5 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1236603035" 
	@${RM} ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o.d" -o ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o ../src/winc1500/wf_mcu_driver_stub.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1236603035/socket_event_stub.o: ../src/winc1500/socket_event_stub.c  .generated_files/flags/DSP_TU2/d008918561d3cca41c502e6767ae1c890635ec5d .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1236603035" 
	@${RM} ${OBJECTDIR}/_ext/1236603035/socket_event_stub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1236603035/socket_event_stub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1236603035/socket_event_stub.o.d" -o ${OBJECTDIR}/_ext/1236603035/socket_event_stub.o ../src/winc1500/socket_event_stub.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o: ../src/winc1500/wifi_event_stub.c  .generated_files/flags/DSP_TU2/63aafa4b7c85a91f83847a85c3baa50b52a9eca2 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1236603035" 
	@${RM} ${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o.d" -o ${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o ../src/winc1500/wifi_event_stub.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1236603035/ota_event_stub.o: ../src/winc1500/ota_event_stub.c  .generated_files/flags/DSP_TU2/3187cf2bc29a7d53d7c8af422b0c2ea54aeb796f .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1236603035" 
	@${RM} ${OBJECTDIR}/_ext/1236603035/ota_event_stub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1236603035/ota_event_stub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1236603035/ota_event_stub.o.d" -o ${OBJECTDIR}/_ext/1236603035/ota_event_stub.o ../src/winc1500/ota_event_stub.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/WiFiInit.o: ../src/WiFiInit.c  .generated_files/flags/DSP_TU2/5eb37aec96564f56e8987d490c6cf990311c7942 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WiFiInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WiFiInit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/WiFiInit.o.d" -o ${OBJECTDIR}/_ext/1360937237/WiFiInit.o ../src/WiFiInit.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/WifiPoll.o: ../src/WifiPoll.c  .generated_files/flags/DSP_TU2/ae4cc3f08d3610bfcbc2f80e6ca95c0d78ec23e7 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WifiPoll.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WifiPoll.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/WifiPoll.o.d" -o ${OBJECTDIR}/_ext/1360937237/WifiPoll.o ../src/WifiPoll.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/DSP_TU2/cfeb83f2bc561e2692857e9daf615f8a8fe5573 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/AfskGen.o: ../src/AfskGen.c  .generated_files/flags/DSP_TU2/2641644a2abd81458727e195888eecd3699e058e .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AfskGen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AfskGen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AfskGen.o.d" -o ${OBJECTDIR}/_ext/1360937237/AfskGen.o ../src/AfskGen.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/BaudotUart.o: ../src/BaudotUart.c  .generated_files/flags/DSP_TU2/8ba9a533186c9ae1f3e05201f5619193902a9a8 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BaudotUart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d" -o ${OBJECTDIR}/_ext/1360937237/BaudotUart.o ../src/BaudotUart.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o: ../src/DynamicThreshold.c  .generated_files/flags/DSP_TU2/51e30acdbf90f67248df94d057e20f5b74e47c38 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d" -o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ../src/DynamicThreshold.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o: ../src/PwmAudioOut.c  .generated_files/flags/DSP_TU2/3a4490574c6d5135daa53644f407972b2f20d0a6 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d" -o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ../src/PwmAudioOut.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/agc.o: ../src/agc.c  .generated_files/flags/DSP_TU2/91c8b19bdfb07a995b0acf734f7769ac5596ce17 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/agc.o.d" -o ${OBJECTDIR}/_ext/1360937237/agc.o ../src/agc.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/biquad.o: ../src/biquad.c  .generated_files/flags/DSP_TU2/119a0a3da36802d1b1b185a71b2efa31bf350334 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/biquad.o.d" -o ${OBJECTDIR}/_ext/1360937237/biquad.o ../src/biquad.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/dds.o: ../src/dds.c  .generated_files/flags/DSP_TU2/7a707c8ea54c47e7486697808b7f7541e71579ec .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dds.o.d" -o ${OBJECTDIR}/_ext/1360937237/dds.o ../src/dds.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/display.o: ../src/display.c  .generated_files/flags/DSP_TU2/f33f22363dd019c51746f5ab9a25cdd7adc7776f .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/display.o.d" -o ${OBJECTDIR}/_ext/1360937237/display.o ../src/display.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/fifo16.o: ../src/fifo16.c  .generated_files/flags/DSP_TU2/64566b11be533b588b3f4748e5b574bde99e7008 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fifo16.o.d" -o ${OBJECTDIR}/_ext/1360937237/fifo16.o ../src/fifo16.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/xyScope.o: ../src/xyScope.c  .generated_files/flags/DSP_TU2/2e5bd0da6b134f329d4590470740eb1fcd5776fa .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/xyScope.o.d" -o ${OBJECTDIR}/_ext/1360937237/xyScope.o ../src/xyScope.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o: ../src/PollSwitchesLeds.c  .generated_files/flags/DSP_TU2/ade755da88cc5bde92b896362719a9434da6ac3d .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d" -o ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o ../src/PollSwitchesLeds.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/PollEncoder.o: ../src/PollEncoder.c  .generated_files/flags/DSP_TU2/4c12e677ff4698788eb4746768cfa7d23b83dcba .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollEncoder.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d" -o ${OBJECTDIR}/_ext/1360937237/PollEncoder.o ../src/PollEncoder.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/UserConfig.o: ../src/UserConfig.c  .generated_files/flags/DSP_TU2/bad5e1a86431b74e5cd86625836ac6ff2e0dd46 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UserConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UserConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/UserConfig.o.d" -o ${OBJECTDIR}/_ext/1360937237/UserConfig.o ../src/UserConfig.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/filters.o: ../src/filters.c  .generated_files/flags/DSP_TU2/21d4a52bed363e33c856376de90eb8167d2b5af4 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/filters.o.d" -o ${OBJECTDIR}/_ext/1360937237/filters.o ../src/filters.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/AutostartKos.o: ../src/AutostartKos.c  .generated_files/flags/DSP_TU2/d5c8b6e5e5d71244eb12929453fc8eecb0d83874 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AutostartKos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AutostartKos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AutostartKos.o.d" -o ${OBJECTDIR}/_ext/1360937237/AutostartKos.o ../src/AutostartKos.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/ExtFlash.o: ../src/ExtFlash.c  .generated_files/flags/DSP_TU2/e3e28e55b616d1ce30d3ec66678ee6776ceac2cd .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ExtFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ExtFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ExtFlash.o.d" -o ${OBJECTDIR}/_ext/1360937237/ExtFlash.o ../src/ExtFlash.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o: ../src/CommandInterpreter.c  .generated_files/flags/DSP_TU2/1b72b099571497c25a8dbbd5ccc519fa55608ffa .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o.d" -o ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o ../src/CommandInterpreter.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/fifo8.o: ../src/fifo8.c  .generated_files/flags/DSP_TU2/375dc49dffeb3f499cbb39e5cddc86de6ed9ab2a .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fifo8.o.d" -o ${OBJECTDIR}/_ext/1360937237/fifo8.o ../src/fifo8.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/Unifont.o: ../src/Unifont.c  .generated_files/flags/DSP_TU2/2368662879944a5fb335571124eea639fc8686e2 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Unifont.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Unifont.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Unifont.o.d" -o ${OBJECTDIR}/_ext/1360937237/Unifont.o ../src/Unifont.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/menu.o: ../src/menu.c  .generated_files/flags/DSP_TU2/33bb2c448b364f0c308ceb356b88e42b9bd50c89 .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/menu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/menu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/menu.o.d" -o ${OBJECTDIR}/_ext/1360937237/menu.o ../src/menu.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o: ../src/PowerLineNoise.c  .generated_files/flags/DSP_TU2/e1f68404f7299010bca8d77f0f32c76001f6407a .generated_files/flags/DSP_TU2/868ae7953b0775ec391d7f359b968edd4831afc
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o.d" -o ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o ../src/PowerLineNoise.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/app_mz.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=15000,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--memorysummary,${DISTDIR}/memoryfile.xml 
	
else
${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/app_mz.ld ../../../Bootloader/firmware/Bootloader.X/dist/Bootloader/production/Bootloader.X.production.hex
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=15000,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--memorysummary,${DISTDIR}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo "Creating unified hex file"
	@"C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.hex ../../../Bootloader/firmware/Bootloader.X/dist/Bootloader/production/Bootloader.X.production.hex -odist/${CND_CONF}/production/DSP_TU2.X.production.unified.hex

endif


# Subprojects
.build-subprojects:
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
	cd ../../../Bootloader/firmware/Bootloader.X && ${MAKE}  -f Makefile CONF=Bootloader TYPE_IMAGE=DEBUG_RUN
else
	cd ../../../Bootloader/firmware/Bootloader.X && ${MAKE}  -f Makefile CONF=Bootloader
endif


# Subprojects
.clean-subprojects:
	cd ../../../Bootloader/firmware/Bootloader.X && rm -rf "build/Bootloader" "dist/Bootloader"

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
