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
${OBJECTDIR}/_ext/302168295/plib_adchs.o: ../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c  .generated_files/flags/DSP_TU2/678a5a706b6298b9eb9a08466804c93bff6717d1 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/302168295" 
	@${RM} ${OBJECTDIR}/_ext/302168295/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/302168295/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302168295/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/302168295/plib_adchs.o ../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255064926/plib_clk.o: ../src/config/DSP_TU2/peripheral/clk/plib_clk.c  .generated_files/flags/DSP_TU2/563080c3b72c633a5a0609abb3f4e401a90c3c49 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255064926" 
	@${RM} ${OBJECTDIR}/_ext/255064926/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/255064926/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255064926/plib_clk.o.d" -o ${OBJECTDIR}/_ext/255064926/plib_clk.o ../src/config/DSP_TU2/peripheral/clk/plib_clk.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682852657/plib_evic.o: ../src/config/DSP_TU2/peripheral/evic/plib_evic.c  .generated_files/flags/DSP_TU2/7187cc19a37803353b82fea9613d0702365aa10f .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/682852657" 
	@${RM} ${OBJECTDIR}/_ext/682852657/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/682852657/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682852657/plib_evic.o.d" -o ${OBJECTDIR}/_ext/682852657/plib_evic.o ../src/config/DSP_TU2/peripheral/evic/plib_evic.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682798829/plib_gpio.o: ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c  .generated_files/flags/DSP_TU2/56da6c970cb1c2f34d148e0b7bb8703c3228e0b4 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/682798829" 
	@${RM} ${OBJECTDIR}/_ext/682798829/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/682798829/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682798829/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/682798829/plib_gpio.o ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682572869/plib_ocmp1.o: ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c  .generated_files/flags/DSP_TU2/88b55919417f5a7e0906d2cef64f3bb7b4901f32 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/682572869" 
	@${RM} ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d" -o ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi1_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/DSP_TU2/7b1f4314bc5c75c5ace8db4993d19d877efaaec0 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi3_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c  .generated_files/flags/DSP_TU2/80ef2def194e869229e6b7db869f17d73bd94e88 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi2_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/flags/DSP_TU2/444370ca9cf9bbdc263bcc26b7ec31b3cdd2b153 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255081301/plib_tmr2.o: ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/DSP_TU2/20dae1d59643b0efe87735f84979cfe429e0b108 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255081301" 
	@${RM} ${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/255081301/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/255081301/plib_tmr2.o ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682395886/plib_uart1.o: ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c  .generated_files/flags/DSP_TU2/6ba1a5becc771bb906a509487b1450e5797a1a24 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/682395886" 
	@${RM} ${OBJECTDIR}/_ext/682395886/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/682395886/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682395886/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/682395886/plib_uart1.o ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255083907/plib_wdt.o: ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c  .generated_files/flags/DSP_TU2/42295a98d9fa9338128b652b366fce248d6ee6b .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255083907" 
	@${RM} ${OBJECTDIR}/_ext/255083907/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/255083907/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255083907/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/255083907/plib_wdt.o ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/775482278/xc32_monitor.o: ../src/config/DSP_TU2/stdio/xc32_monitor.c  .generated_files/flags/DSP_TU2/8c2d5f9a1d512d01633b21d95c895278b07264c5 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/775482278" 
	@${RM} ${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/775482278/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/775482278/xc32_monitor.o ../src/config/DSP_TU2/stdio/xc32_monitor.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/initialization.o: ../src/config/DSP_TU2/initialization.c  .generated_files/flags/DSP_TU2/2810b97d3db55f6ce3a996b3362c87a3e2bf02c9 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/initialization.o.d" -o ${OBJECTDIR}/_ext/1994557280/initialization.o ../src/config/DSP_TU2/initialization.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/interrupts.o: ../src/config/DSP_TU2/interrupts.c  .generated_files/flags/DSP_TU2/5bb1d67c88461bfd7d23130ef26a36f5e538fd08 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/interrupts.o.d" -o ${OBJECTDIR}/_ext/1994557280/interrupts.o ../src/config/DSP_TU2/interrupts.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/exceptions.o: ../src/config/DSP_TU2/exceptions.c  .generated_files/flags/DSP_TU2/630d3e2a0bbe4f282367431f25f8cd458132a69e .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/exceptions.o.d" -o ${OBJECTDIR}/_ext/1994557280/exceptions.o ../src/config/DSP_TU2/exceptions.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_asic.o: ../src/winc1500/src/wf_asic.c  .generated_files/flags/DSP_TU2/36f3842f5538c854ad54b666104eea094bf1826 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_asic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_asic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_asic.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_asic.o ../src/winc1500/src/wf_asic.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_hif.o: ../src/winc1500/src/wf_hif.c  .generated_files/flags/DSP_TU2/9c6017c4350da6ac27e46ac43bb3669c4c10abc4 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_hif.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_hif.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_hif.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_hif.o ../src/winc1500/src/wf_hif.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_ota.o: ../src/winc1500/src/wf_ota.c  .generated_files/flags/DSP_TU2/c726de966278d0e8cad4de139d9782cd504c976f .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_ota.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_ota.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_ota.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_ota.o ../src/winc1500/src/wf_ota.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_socket.o: ../src/winc1500/src/wf_socket.c  .generated_files/flags/DSP_TU2/5e14cb0a04dcc6503ba56fdeb661fb47bdf09278 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_socket.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_socket.o ../src/winc1500/src/wf_socket.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_spi.o: ../src/winc1500/src/wf_spi.c  .generated_files/flags/DSP_TU2/7ab99340ec29de50b03427b9b330af9ffb07b5d5 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_spi.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_spi.o ../src/winc1500/src/wf_spi.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o: ../src/winc1500/src/wf_spi_flash.c  .generated_files/flags/DSP_TU2/d6e3bd39a60ad7c4deb735540bd15032f4d5cbd0 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o ../src/winc1500/src/wf_spi_flash.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_utils.o: ../src/winc1500/src/wf_utils.c  .generated_files/flags/DSP_TU2/8b944884e10edcc64b1a91547663883fee589074 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_utils.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_utils.o ../src/winc1500/src/wf_utils.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_wifi.o: ../src/winc1500/src/wf_wifi.c  .generated_files/flags/DSP_TU2/c85bbce46cc7c38ef356d7f698bd4e7d00b49d1c .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_wifi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_wifi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_wifi.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_wifi.o ../src/winc1500/src/wf_wifi.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o: ../src/winc1500/wf_mcu_driver_stub.c  .generated_files/flags/DSP_TU2/1e3b817c66cdc3e3ee8ec013a10587ae56762158 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1236603035" 
	@${RM} ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o.d" -o ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o ../src/winc1500/wf_mcu_driver_stub.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1236603035/socket_event_stub.o: ../src/winc1500/socket_event_stub.c  .generated_files/flags/DSP_TU2/98fe5c9b2a0770ab0a0c1f1b45bc9293560243fe .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1236603035" 
	@${RM} ${OBJECTDIR}/_ext/1236603035/socket_event_stub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1236603035/socket_event_stub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1236603035/socket_event_stub.o.d" -o ${OBJECTDIR}/_ext/1236603035/socket_event_stub.o ../src/winc1500/socket_event_stub.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o: ../src/winc1500/wifi_event_stub.c  .generated_files/flags/DSP_TU2/ab82d7d58cd926263df62bbcc26d64f59708cf22 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1236603035" 
	@${RM} ${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o.d" -o ${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o ../src/winc1500/wifi_event_stub.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1236603035/ota_event_stub.o: ../src/winc1500/ota_event_stub.c  .generated_files/flags/DSP_TU2/1db309a248f73e25d20f0d463ede960967e2eb5f .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1236603035" 
	@${RM} ${OBJECTDIR}/_ext/1236603035/ota_event_stub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1236603035/ota_event_stub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1236603035/ota_event_stub.o.d" -o ${OBJECTDIR}/_ext/1236603035/ota_event_stub.o ../src/winc1500/ota_event_stub.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/WiFiInit.o: ../src/WiFiInit.c  .generated_files/flags/DSP_TU2/dedf2e6eb342611aaeb436a676f804ca372d283e .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WiFiInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WiFiInit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/WiFiInit.o.d" -o ${OBJECTDIR}/_ext/1360937237/WiFiInit.o ../src/WiFiInit.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/WifiPoll.o: ../src/WifiPoll.c  .generated_files/flags/DSP_TU2/c7e03a8fec605cef690906daefe9c36d961fc827 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WifiPoll.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WifiPoll.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/WifiPoll.o.d" -o ${OBJECTDIR}/_ext/1360937237/WifiPoll.o ../src/WifiPoll.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/DSP_TU2/575416908356e6c398c55fb1d5a5b06bbde8b7d9 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/AfskGen.o: ../src/AfskGen.c  .generated_files/flags/DSP_TU2/b4d1a571a2c2f599efa888d08ddf9a02a2294265 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AfskGen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AfskGen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AfskGen.o.d" -o ${OBJECTDIR}/_ext/1360937237/AfskGen.o ../src/AfskGen.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/BaudotUart.o: ../src/BaudotUart.c  .generated_files/flags/DSP_TU2/4ce7aa34437b3cc7c02cdf0cdbc35059cec383dd .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BaudotUart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d" -o ${OBJECTDIR}/_ext/1360937237/BaudotUart.o ../src/BaudotUart.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o: ../src/DynamicThreshold.c  .generated_files/flags/DSP_TU2/c85c06f576d5becdf58b1b9012acdab2f395765c .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d" -o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ../src/DynamicThreshold.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o: ../src/PwmAudioOut.c  .generated_files/flags/DSP_TU2/36f8ff6a4e7f0a880bb4436f33da6125205cb165 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d" -o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ../src/PwmAudioOut.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/agc.o: ../src/agc.c  .generated_files/flags/DSP_TU2/d894496445cd686a7e4e0d7ffdd00d42cc43964a .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/agc.o.d" -o ${OBJECTDIR}/_ext/1360937237/agc.o ../src/agc.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/biquad.o: ../src/biquad.c  .generated_files/flags/DSP_TU2/71bf49290011189c9d2585497435f37056fe7c39 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/biquad.o.d" -o ${OBJECTDIR}/_ext/1360937237/biquad.o ../src/biquad.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dds.o: ../src/dds.c  .generated_files/flags/DSP_TU2/8984b922fe8041852e47cee90d21a22c9dce1f7a .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dds.o.d" -o ${OBJECTDIR}/_ext/1360937237/dds.o ../src/dds.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/display.o: ../src/display.c  .generated_files/flags/DSP_TU2/c17747cbedfa296f12cc2b9e66db83dfee53f257 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/display.o.d" -o ${OBJECTDIR}/_ext/1360937237/display.o ../src/display.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fifo16.o: ../src/fifo16.c  .generated_files/flags/DSP_TU2/c76ef92aa9f376edb5f5efd3bd5bc07d89e4056a .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fifo16.o.d" -o ${OBJECTDIR}/_ext/1360937237/fifo16.o ../src/fifo16.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/xyScope.o: ../src/xyScope.c  .generated_files/flags/DSP_TU2/39d25f594e3a7cdd91435e06dafd85a6cdaaeebb .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/xyScope.o.d" -o ${OBJECTDIR}/_ext/1360937237/xyScope.o ../src/xyScope.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o: ../src/PollSwitchesLeds.c  .generated_files/flags/DSP_TU2/8a10d277829c2f45fa66f6287997ff9a43d01ad3 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d" -o ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o ../src/PollSwitchesLeds.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PollEncoder.o: ../src/PollEncoder.c  .generated_files/flags/DSP_TU2/fd86be8677f9bfba3fc9abbd83b6da05e599bb91 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollEncoder.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d" -o ${OBJECTDIR}/_ext/1360937237/PollEncoder.o ../src/PollEncoder.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/UserConfig.o: ../src/UserConfig.c  .generated_files/flags/DSP_TU2/201b3814c3da1a11cc9091a7c07a7b9bc9719214 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UserConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UserConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/UserConfig.o.d" -o ${OBJECTDIR}/_ext/1360937237/UserConfig.o ../src/UserConfig.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/filters.o: ../src/filters.c  .generated_files/flags/DSP_TU2/8809c7c0bc66b3e52c3e2ab8cc2bca2e7d289ed8 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/filters.o.d" -o ${OBJECTDIR}/_ext/1360937237/filters.o ../src/filters.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/AutostartKos.o: ../src/AutostartKos.c  .generated_files/flags/DSP_TU2/2da6c45269e29361cf2459c540192b918346fad .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AutostartKos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AutostartKos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AutostartKos.o.d" -o ${OBJECTDIR}/_ext/1360937237/AutostartKos.o ../src/AutostartKos.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/ExtFlash.o: ../src/ExtFlash.c  .generated_files/flags/DSP_TU2/376a3d40358e33710df2cc178cd2132e7a65644e .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ExtFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ExtFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ExtFlash.o.d" -o ${OBJECTDIR}/_ext/1360937237/ExtFlash.o ../src/ExtFlash.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o: ../src/CommandInterpreter.c  .generated_files/flags/DSP_TU2/bebb32afc5a6cfeb6fbbad9f656c6b58c6b9c65f .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o.d" -o ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o ../src/CommandInterpreter.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fifo8.o: ../src/fifo8.c  .generated_files/flags/DSP_TU2/2aeb93a7499dc198f2625b9948c0c031272c795c .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fifo8.o.d" -o ${OBJECTDIR}/_ext/1360937237/fifo8.o ../src/fifo8.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Unifont.o: ../src/Unifont.c  .generated_files/flags/DSP_TU2/9aca2b8ba3dd7456c1223ee66892c972176aed74 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Unifont.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Unifont.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Unifont.o.d" -o ${OBJECTDIR}/_ext/1360937237/Unifont.o ../src/Unifont.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/menu.o: ../src/menu.c  .generated_files/flags/DSP_TU2/448ec99a9b50eeda805dcbe27dc9e26bce01b7e .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/menu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/menu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/menu.o.d" -o ${OBJECTDIR}/_ext/1360937237/menu.o ../src/menu.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o: ../src/PowerLineNoise.c  .generated_files/flags/DSP_TU2/9262097753b5bd54f502a0dbe8724587f4d8c109 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o.d" -o ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o ../src/PowerLineNoise.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/302168295/plib_adchs.o: ../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c  .generated_files/flags/DSP_TU2/bac09279a5e757546afd778227a56d9c2f73ec90 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/302168295" 
	@${RM} ${OBJECTDIR}/_ext/302168295/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/302168295/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302168295/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/302168295/plib_adchs.o ../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255064926/plib_clk.o: ../src/config/DSP_TU2/peripheral/clk/plib_clk.c  .generated_files/flags/DSP_TU2/a2fd946a4467b94910e81632ff2fe8f79244a0fc .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255064926" 
	@${RM} ${OBJECTDIR}/_ext/255064926/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/255064926/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255064926/plib_clk.o.d" -o ${OBJECTDIR}/_ext/255064926/plib_clk.o ../src/config/DSP_TU2/peripheral/clk/plib_clk.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682852657/plib_evic.o: ../src/config/DSP_TU2/peripheral/evic/plib_evic.c  .generated_files/flags/DSP_TU2/adc10d0d57aea8a0ca11c95d15edbd430e3a93a3 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/682852657" 
	@${RM} ${OBJECTDIR}/_ext/682852657/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/682852657/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682852657/plib_evic.o.d" -o ${OBJECTDIR}/_ext/682852657/plib_evic.o ../src/config/DSP_TU2/peripheral/evic/plib_evic.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682798829/plib_gpio.o: ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c  .generated_files/flags/DSP_TU2/4d61c68f1f8db9a564d9401c80e7d0bf8da2a51a .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/682798829" 
	@${RM} ${OBJECTDIR}/_ext/682798829/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/682798829/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682798829/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/682798829/plib_gpio.o ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682572869/plib_ocmp1.o: ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c  .generated_files/flags/DSP_TU2/ead9a68009286f803d6726a866fd146997a19ff6 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/682572869" 
	@${RM} ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d" -o ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi1_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/DSP_TU2/868e5c7dfe386252735585c45f8a346767ae98e4 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi3_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c  .generated_files/flags/DSP_TU2/38e607fd4733b81f71eadf48cbb344bc1db11f6d .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi2_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/flags/DSP_TU2/e6138007acc557821354182245785ea6053fda26 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255081301/plib_tmr2.o: ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/DSP_TU2/1c4eb9c329ed65f18559fe87f97363df5a33cc6d .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255081301" 
	@${RM} ${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/255081301/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/255081301/plib_tmr2.o ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682395886/plib_uart1.o: ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c  .generated_files/flags/DSP_TU2/9b004a7d14020fefc8bc71661f3534e8478e8813 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/682395886" 
	@${RM} ${OBJECTDIR}/_ext/682395886/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/682395886/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682395886/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/682395886/plib_uart1.o ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255083907/plib_wdt.o: ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c  .generated_files/flags/DSP_TU2/c1330c735ffdca875773fa936c76581f3dca87d9 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255083907" 
	@${RM} ${OBJECTDIR}/_ext/255083907/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/255083907/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255083907/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/255083907/plib_wdt.o ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/775482278/xc32_monitor.o: ../src/config/DSP_TU2/stdio/xc32_monitor.c  .generated_files/flags/DSP_TU2/d1d02c92d1357e881215c60016154175d27d1625 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/775482278" 
	@${RM} ${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/775482278/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/775482278/xc32_monitor.o ../src/config/DSP_TU2/stdio/xc32_monitor.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/initialization.o: ../src/config/DSP_TU2/initialization.c  .generated_files/flags/DSP_TU2/28c36710ed990178decedeb5476c5c477600dc39 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/initialization.o.d" -o ${OBJECTDIR}/_ext/1994557280/initialization.o ../src/config/DSP_TU2/initialization.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/interrupts.o: ../src/config/DSP_TU2/interrupts.c  .generated_files/flags/DSP_TU2/d054109a2654c7226f58b4178701c632ecc65924 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/interrupts.o.d" -o ${OBJECTDIR}/_ext/1994557280/interrupts.o ../src/config/DSP_TU2/interrupts.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/exceptions.o: ../src/config/DSP_TU2/exceptions.c  .generated_files/flags/DSP_TU2/4e0952f83b5ea3414dcdf024c1e4a4b4509fd7c7 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/exceptions.o.d" -o ${OBJECTDIR}/_ext/1994557280/exceptions.o ../src/config/DSP_TU2/exceptions.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_asic.o: ../src/winc1500/src/wf_asic.c  .generated_files/flags/DSP_TU2/dbcbba36590a35064e1ea20da599c8ee12f1bec6 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_asic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_asic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_asic.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_asic.o ../src/winc1500/src/wf_asic.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_hif.o: ../src/winc1500/src/wf_hif.c  .generated_files/flags/DSP_TU2/63d592c4a71a1ca1078d5953dddf215f5ccf4a2e .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_hif.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_hif.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_hif.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_hif.o ../src/winc1500/src/wf_hif.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_ota.o: ../src/winc1500/src/wf_ota.c  .generated_files/flags/DSP_TU2/556e073d3286ad2c882fdbb7c6e9d04f6a62d380 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_ota.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_ota.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_ota.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_ota.o ../src/winc1500/src/wf_ota.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_socket.o: ../src/winc1500/src/wf_socket.c  .generated_files/flags/DSP_TU2/fd08622aeaca740154bade6ce2d753e763a2895 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_socket.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_socket.o ../src/winc1500/src/wf_socket.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_spi.o: ../src/winc1500/src/wf_spi.c  .generated_files/flags/DSP_TU2/d07b0b8082d6c26d559a6e7ef78f7d2e362f86dc .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_spi.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_spi.o ../src/winc1500/src/wf_spi.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o: ../src/winc1500/src/wf_spi_flash.c  .generated_files/flags/DSP_TU2/b4b2d7d88fcc3c3e8333b5b3b8fafa33012e9c .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o ../src/winc1500/src/wf_spi_flash.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_utils.o: ../src/winc1500/src/wf_utils.c  .generated_files/flags/DSP_TU2/44f81dcc2b9e26952009165e1847decd361ffa51 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_utils.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_utils.o ../src/winc1500/src/wf_utils.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_wifi.o: ../src/winc1500/src/wf_wifi.c  .generated_files/flags/DSP_TU2/cee9996be4a455c0d20f503dc9a0f20dd99adafd .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_wifi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_wifi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_wifi.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_wifi.o ../src/winc1500/src/wf_wifi.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o: ../src/winc1500/wf_mcu_driver_stub.c  .generated_files/flags/DSP_TU2/f7820be36fff3b7e21cad55b8cb9f507b911163c .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1236603035" 
	@${RM} ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o.d" -o ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o ../src/winc1500/wf_mcu_driver_stub.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1236603035/socket_event_stub.o: ../src/winc1500/socket_event_stub.c  .generated_files/flags/DSP_TU2/6cf08d8e7c81ebc7dc009569b5bc646cc8af188e .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1236603035" 
	@${RM} ${OBJECTDIR}/_ext/1236603035/socket_event_stub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1236603035/socket_event_stub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1236603035/socket_event_stub.o.d" -o ${OBJECTDIR}/_ext/1236603035/socket_event_stub.o ../src/winc1500/socket_event_stub.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o: ../src/winc1500/wifi_event_stub.c  .generated_files/flags/DSP_TU2/2f0ded419c38d691ecdc6a0051a335a511340208 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1236603035" 
	@${RM} ${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o.d" -o ${OBJECTDIR}/_ext/1236603035/wifi_event_stub.o ../src/winc1500/wifi_event_stub.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1236603035/ota_event_stub.o: ../src/winc1500/ota_event_stub.c  .generated_files/flags/DSP_TU2/ab5cc4f6a97c462cf29e4af034dfd3bb343fdcaa .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1236603035" 
	@${RM} ${OBJECTDIR}/_ext/1236603035/ota_event_stub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1236603035/ota_event_stub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1236603035/ota_event_stub.o.d" -o ${OBJECTDIR}/_ext/1236603035/ota_event_stub.o ../src/winc1500/ota_event_stub.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/WiFiInit.o: ../src/WiFiInit.c  .generated_files/flags/DSP_TU2/15ce7a6552cb9cf4f53c9d057740ba0feb76586b .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WiFiInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WiFiInit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/WiFiInit.o.d" -o ${OBJECTDIR}/_ext/1360937237/WiFiInit.o ../src/WiFiInit.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/WifiPoll.o: ../src/WifiPoll.c  .generated_files/flags/DSP_TU2/c71f31a49d5345f5ef8d3639cb45977d9117af55 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WifiPoll.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WifiPoll.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/WifiPoll.o.d" -o ${OBJECTDIR}/_ext/1360937237/WifiPoll.o ../src/WifiPoll.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/DSP_TU2/a68b8e1035bfe6d55caf0b3d4aba4939c70ddadf .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/AfskGen.o: ../src/AfskGen.c  .generated_files/flags/DSP_TU2/5c3e3512e0681e2349af9375e47ff971746eb8f6 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AfskGen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AfskGen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AfskGen.o.d" -o ${OBJECTDIR}/_ext/1360937237/AfskGen.o ../src/AfskGen.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/BaudotUart.o: ../src/BaudotUart.c  .generated_files/flags/DSP_TU2/a2e123d7961e65f5e5f84081b3d7c4c3c0e9dcdd .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BaudotUart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d" -o ${OBJECTDIR}/_ext/1360937237/BaudotUart.o ../src/BaudotUart.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o: ../src/DynamicThreshold.c  .generated_files/flags/DSP_TU2/75b35b18d6e75b94ed748a1dcaaea3fc07616554 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d" -o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ../src/DynamicThreshold.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o: ../src/PwmAudioOut.c  .generated_files/flags/DSP_TU2/aa225a73f5462c08a2a1a024c857beb2291d373f .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d" -o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ../src/PwmAudioOut.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/agc.o: ../src/agc.c  .generated_files/flags/DSP_TU2/8626a30c927cad5b5e7e67387519c83ad00544af .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/agc.o.d" -o ${OBJECTDIR}/_ext/1360937237/agc.o ../src/agc.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/biquad.o: ../src/biquad.c  .generated_files/flags/DSP_TU2/c27a505642c51400477fcfc970194b5448cc8cc6 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/biquad.o.d" -o ${OBJECTDIR}/_ext/1360937237/biquad.o ../src/biquad.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dds.o: ../src/dds.c  .generated_files/flags/DSP_TU2/14dd4aa8c0aebdab3f44c3e7f55cdab95840e04f .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dds.o.d" -o ${OBJECTDIR}/_ext/1360937237/dds.o ../src/dds.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/display.o: ../src/display.c  .generated_files/flags/DSP_TU2/f9d9f0a5aafb51b16bb692ae76a6fae72d95b811 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/display.o.d" -o ${OBJECTDIR}/_ext/1360937237/display.o ../src/display.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fifo16.o: ../src/fifo16.c  .generated_files/flags/DSP_TU2/b4bc260a966c19dc09806a533f957aa5b467ef8a .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fifo16.o.d" -o ${OBJECTDIR}/_ext/1360937237/fifo16.o ../src/fifo16.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/xyScope.o: ../src/xyScope.c  .generated_files/flags/DSP_TU2/670440955582cf10d4087077e51648a9c92d7c0a .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/xyScope.o.d" -o ${OBJECTDIR}/_ext/1360937237/xyScope.o ../src/xyScope.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o: ../src/PollSwitchesLeds.c  .generated_files/flags/DSP_TU2/a74fe38cd664a1c328ac90c3821eb280f10d4213 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d" -o ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o ../src/PollSwitchesLeds.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PollEncoder.o: ../src/PollEncoder.c  .generated_files/flags/DSP_TU2/7b607afb110888104734da0821a1eca91e8df604 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollEncoder.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d" -o ${OBJECTDIR}/_ext/1360937237/PollEncoder.o ../src/PollEncoder.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/UserConfig.o: ../src/UserConfig.c  .generated_files/flags/DSP_TU2/cf4452ecaf0e0a6ccb9befc2e86c537caaf36732 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UserConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UserConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/UserConfig.o.d" -o ${OBJECTDIR}/_ext/1360937237/UserConfig.o ../src/UserConfig.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/filters.o: ../src/filters.c  .generated_files/flags/DSP_TU2/51fc033c898cc0fc0ed4e231ee12b8d69e7a0149 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/filters.o.d" -o ${OBJECTDIR}/_ext/1360937237/filters.o ../src/filters.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/AutostartKos.o: ../src/AutostartKos.c  .generated_files/flags/DSP_TU2/f681c23ba6dd8f78fdabf0ea62dd30effef3de2e .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AutostartKos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AutostartKos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AutostartKos.o.d" -o ${OBJECTDIR}/_ext/1360937237/AutostartKos.o ../src/AutostartKos.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/ExtFlash.o: ../src/ExtFlash.c  .generated_files/flags/DSP_TU2/4299d36e15d7249cace11bb025113c89c64cca58 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ExtFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ExtFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ExtFlash.o.d" -o ${OBJECTDIR}/_ext/1360937237/ExtFlash.o ../src/ExtFlash.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o: ../src/CommandInterpreter.c  .generated_files/flags/DSP_TU2/a488697f3a2730868ffb7cc209564b021b392f27 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o.d" -o ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o ../src/CommandInterpreter.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fifo8.o: ../src/fifo8.c  .generated_files/flags/DSP_TU2/af878a1d679f8c9d181c829a0c9eeeabd498e9a1 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fifo8.o.d" -o ${OBJECTDIR}/_ext/1360937237/fifo8.o ../src/fifo8.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Unifont.o: ../src/Unifont.c  .generated_files/flags/DSP_TU2/2e8313d51a85e270e9c9cde0c257ef9898b5c8c .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Unifont.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Unifont.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Unifont.o.d" -o ${OBJECTDIR}/_ext/1360937237/Unifont.o ../src/Unifont.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/menu.o: ../src/menu.c  .generated_files/flags/DSP_TU2/2304eae702e8fe2ada4a79c0f9a6617a83e7f918 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/menu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/menu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/menu.o.d" -o ${OBJECTDIR}/_ext/1360937237/menu.o ../src/menu.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o: ../src/PowerLineNoise.c  .generated_files/flags/DSP_TU2/d01582b543dcdaebaf0d36e5075e907c3635391f .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o.d" -o ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o ../src/PowerLineNoise.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=15000,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/app_mz.ld ../../../Bootloader/firmware/Bootloader.X/dist/Bootloader/production/Bootloader.X.production.hex
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=15000,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo "Creating unified hex file"
	@"C:/Program Files/Microchip/MPLABX/v6.20/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.20/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.hex ../../../Bootloader/firmware/Bootloader.X/dist/Bootloader/production/Bootloader.X.production.hex -odist/${CND_CONF}/production/DSP_TU2.X.production.unified.hex

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

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
