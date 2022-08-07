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
ifeq "$(wildcard nbproject/Makefile-local-DSP_TU.mk)" "nbproject/Makefile-local-DSP_TU.mk"
include nbproject/Makefile-local-DSP_TU.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=DSP_TU
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/DSP_TU.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/DSP_TU.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/DSP_TU/peripheral/adchs/plib_adchs.c ../src/config/DSP_TU/peripheral/clk/plib_clk.c ../src/config/DSP_TU/peripheral/evic/plib_evic.c ../src/config/DSP_TU/peripheral/gpio/plib_gpio.c ../src/config/DSP_TU/peripheral/ocmp/plib_ocmp1.c ../src/config/DSP_TU/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/DSP_TU/peripheral/tmr/plib_tmr2.c ../src/config/DSP_TU/peripheral/uart/plib_uart2.c ../src/config/DSP_TU/stdio/xc32_monitor.c ../src/config/DSP_TU/initialization.c ../src/config/DSP_TU/interrupts.c ../src/config/DSP_TU/exceptions.c ../src/main.c ../src/PwmAudioOut.c ../src/biquad.c ../src/dds.c ../src/DynamicThreshold.c ../src/agc.c ../src/fifo16.c ../src/display.c ../src/xyScope.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1736525323/plib_adchs.o ${OBJECTDIR}/_ext/2093422612/plib_clk.o ${OBJECTDIR}/_ext/471522303/plib_evic.o ${OBJECTDIR}/_ext/471468475/plib_gpio.o ${OBJECTDIR}/_ext/471242515/plib_ocmp1.o ${OBJECTDIR}/_ext/477210738/plib_spi1_master.o ${OBJECTDIR}/_ext/2093406237/plib_tmr2.o ${OBJECTDIR}/_ext/471065532/plib_uart2.o ${OBJECTDIR}/_ext/2030120972/xc32_monitor.o ${OBJECTDIR}/_ext/1044038098/initialization.o ${OBJECTDIR}/_ext/1044038098/interrupts.o ${OBJECTDIR}/_ext/1044038098/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ${OBJECTDIR}/_ext/1360937237/biquad.o ${OBJECTDIR}/_ext/1360937237/dds.o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ${OBJECTDIR}/_ext/1360937237/agc.o ${OBJECTDIR}/_ext/1360937237/fifo16.o ${OBJECTDIR}/_ext/1360937237/display.o ${OBJECTDIR}/_ext/1360937237/xyScope.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1736525323/plib_adchs.o.d ${OBJECTDIR}/_ext/2093422612/plib_clk.o.d ${OBJECTDIR}/_ext/471522303/plib_evic.o.d ${OBJECTDIR}/_ext/471468475/plib_gpio.o.d ${OBJECTDIR}/_ext/471242515/plib_ocmp1.o.d ${OBJECTDIR}/_ext/477210738/plib_spi1_master.o.d ${OBJECTDIR}/_ext/2093406237/plib_tmr2.o.d ${OBJECTDIR}/_ext/471065532/plib_uart2.o.d ${OBJECTDIR}/_ext/2030120972/xc32_monitor.o.d ${OBJECTDIR}/_ext/1044038098/initialization.o.d ${OBJECTDIR}/_ext/1044038098/interrupts.o.d ${OBJECTDIR}/_ext/1044038098/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d ${OBJECTDIR}/_ext/1360937237/biquad.o.d ${OBJECTDIR}/_ext/1360937237/dds.o.d ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d ${OBJECTDIR}/_ext/1360937237/agc.o.d ${OBJECTDIR}/_ext/1360937237/fifo16.o.d ${OBJECTDIR}/_ext/1360937237/display.o.d ${OBJECTDIR}/_ext/1360937237/xyScope.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1736525323/plib_adchs.o ${OBJECTDIR}/_ext/2093422612/plib_clk.o ${OBJECTDIR}/_ext/471522303/plib_evic.o ${OBJECTDIR}/_ext/471468475/plib_gpio.o ${OBJECTDIR}/_ext/471242515/plib_ocmp1.o ${OBJECTDIR}/_ext/477210738/plib_spi1_master.o ${OBJECTDIR}/_ext/2093406237/plib_tmr2.o ${OBJECTDIR}/_ext/471065532/plib_uart2.o ${OBJECTDIR}/_ext/2030120972/xc32_monitor.o ${OBJECTDIR}/_ext/1044038098/initialization.o ${OBJECTDIR}/_ext/1044038098/interrupts.o ${OBJECTDIR}/_ext/1044038098/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ${OBJECTDIR}/_ext/1360937237/biquad.o ${OBJECTDIR}/_ext/1360937237/dds.o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ${OBJECTDIR}/_ext/1360937237/agc.o ${OBJECTDIR}/_ext/1360937237/fifo16.o ${OBJECTDIR}/_ext/1360937237/display.o ${OBJECTDIR}/_ext/1360937237/xyScope.o

# Source Files
SOURCEFILES=../src/config/DSP_TU/peripheral/adchs/plib_adchs.c ../src/config/DSP_TU/peripheral/clk/plib_clk.c ../src/config/DSP_TU/peripheral/evic/plib_evic.c ../src/config/DSP_TU/peripheral/gpio/plib_gpio.c ../src/config/DSP_TU/peripheral/ocmp/plib_ocmp1.c ../src/config/DSP_TU/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/DSP_TU/peripheral/tmr/plib_tmr2.c ../src/config/DSP_TU/peripheral/uart/plib_uart2.c ../src/config/DSP_TU/stdio/xc32_monitor.c ../src/config/DSP_TU/initialization.c ../src/config/DSP_TU/interrupts.c ../src/config/DSP_TU/exceptions.c ../src/main.c ../src/PwmAudioOut.c ../src/biquad.c ../src/dds.c ../src/DynamicThreshold.c ../src/agc.c ../src/fifo16.c ../src/display.c ../src/xyScope.c



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
	${MAKE}  -f nbproject/Makefile-DSP_TU.mk ${DISTDIR}/DSP_TU.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM100
MP_LINKER_FILE_OPTION=,--script="..\src\config\DSP_TU\p32MZ2048EFM100.ld"
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
${OBJECTDIR}/_ext/1736525323/plib_adchs.o: ../src/config/DSP_TU/peripheral/adchs/plib_adchs.c  .generated_files/flags/DSP_TU/d9b719c827a862ec1a783d93a39683d124d1715a .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1736525323" 
	@${RM} ${OBJECTDIR}/_ext/1736525323/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1736525323/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1736525323/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1736525323/plib_adchs.o ../src/config/DSP_TU/peripheral/adchs/plib_adchs.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2093422612/plib_clk.o: ../src/config/DSP_TU/peripheral/clk/plib_clk.c  .generated_files/flags/DSP_TU/385bc90f51eef2f2026e09b5e085f6dcd7b6419c .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2093422612" 
	@${RM} ${OBJECTDIR}/_ext/2093422612/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/2093422612/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2093422612/plib_clk.o.d" -o ${OBJECTDIR}/_ext/2093422612/plib_clk.o ../src/config/DSP_TU/peripheral/clk/plib_clk.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/471522303/plib_evic.o: ../src/config/DSP_TU/peripheral/evic/plib_evic.c  .generated_files/flags/DSP_TU/8b627844faf3a86deaf2c3f87c2c1991299ebed7 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/471522303" 
	@${RM} ${OBJECTDIR}/_ext/471522303/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/471522303/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/471522303/plib_evic.o.d" -o ${OBJECTDIR}/_ext/471522303/plib_evic.o ../src/config/DSP_TU/peripheral/evic/plib_evic.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/471468475/plib_gpio.o: ../src/config/DSP_TU/peripheral/gpio/plib_gpio.c  .generated_files/flags/DSP_TU/145792c50c2447dda0fc0f1cce7e6a5b22931d39 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/471468475" 
	@${RM} ${OBJECTDIR}/_ext/471468475/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/471468475/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/471468475/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/471468475/plib_gpio.o ../src/config/DSP_TU/peripheral/gpio/plib_gpio.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/471242515/plib_ocmp1.o: ../src/config/DSP_TU/peripheral/ocmp/plib_ocmp1.c  .generated_files/flags/DSP_TU/c8de0fdf6c819632556a1a10f79a2a93e60b84d .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/471242515" 
	@${RM} ${OBJECTDIR}/_ext/471242515/plib_ocmp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/471242515/plib_ocmp1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/471242515/plib_ocmp1.o.d" -o ${OBJECTDIR}/_ext/471242515/plib_ocmp1.o ../src/config/DSP_TU/peripheral/ocmp/plib_ocmp1.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/477210738/plib_spi1_master.o: ../src/config/DSP_TU/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/DSP_TU/b2a4d28fc8489e2137c918f43c57378857499174 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/477210738" 
	@${RM} ${OBJECTDIR}/_ext/477210738/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/477210738/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/477210738/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/477210738/plib_spi1_master.o ../src/config/DSP_TU/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2093406237/plib_tmr2.o: ../src/config/DSP_TU/peripheral/tmr/plib_tmr2.c  .generated_files/flags/DSP_TU/b2483aaef6f58512ccdc93b87730e4c1ba27df86 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2093406237" 
	@${RM} ${OBJECTDIR}/_ext/2093406237/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/2093406237/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2093406237/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/2093406237/plib_tmr2.o ../src/config/DSP_TU/peripheral/tmr/plib_tmr2.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/471065532/plib_uart2.o: ../src/config/DSP_TU/peripheral/uart/plib_uart2.c  .generated_files/flags/DSP_TU/119383c14a723f1de05ed77e26e32931f4da05e2 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/471065532" 
	@${RM} ${OBJECTDIR}/_ext/471065532/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/471065532/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/471065532/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/471065532/plib_uart2.o ../src/config/DSP_TU/peripheral/uart/plib_uart2.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2030120972/xc32_monitor.o: ../src/config/DSP_TU/stdio/xc32_monitor.c  .generated_files/flags/DSP_TU/2527a81f685622e533be5a317bbf4fd45a8df9fd .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2030120972" 
	@${RM} ${OBJECTDIR}/_ext/2030120972/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/2030120972/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2030120972/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/2030120972/xc32_monitor.o ../src/config/DSP_TU/stdio/xc32_monitor.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1044038098/initialization.o: ../src/config/DSP_TU/initialization.c  .generated_files/flags/DSP_TU/26bab2bd8781959f0bda9a214802e3b640e69f1 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1044038098" 
	@${RM} ${OBJECTDIR}/_ext/1044038098/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1044038098/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1044038098/initialization.o.d" -o ${OBJECTDIR}/_ext/1044038098/initialization.o ../src/config/DSP_TU/initialization.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1044038098/interrupts.o: ../src/config/DSP_TU/interrupts.c  .generated_files/flags/DSP_TU/5c375b9447d34f2949a2b61f91bbe3eda9bf071 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1044038098" 
	@${RM} ${OBJECTDIR}/_ext/1044038098/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1044038098/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1044038098/interrupts.o.d" -o ${OBJECTDIR}/_ext/1044038098/interrupts.o ../src/config/DSP_TU/interrupts.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1044038098/exceptions.o: ../src/config/DSP_TU/exceptions.c  .generated_files/flags/DSP_TU/ef8548b0b113af6acafe4817804ad685155ba803 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1044038098" 
	@${RM} ${OBJECTDIR}/_ext/1044038098/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1044038098/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1044038098/exceptions.o.d" -o ${OBJECTDIR}/_ext/1044038098/exceptions.o ../src/config/DSP_TU/exceptions.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/DSP_TU/a79c346056102e279f02663afabd26b78813e31d .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o: ../src/PwmAudioOut.c  .generated_files/flags/DSP_TU/776dc5d0d59e72e05a3a8c953a956c23d0e4cc1c .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d" -o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ../src/PwmAudioOut.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/biquad.o: ../src/biquad.c  .generated_files/flags/DSP_TU/bab42934ff99c55cf146a59bda9850a75b6b17aa .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/biquad.o.d" -o ${OBJECTDIR}/_ext/1360937237/biquad.o ../src/biquad.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dds.o: ../src/dds.c  .generated_files/flags/DSP_TU/274c03538b41f387ba1468be4324600ea4ec98d4 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dds.o.d" -o ${OBJECTDIR}/_ext/1360937237/dds.o ../src/dds.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o: ../src/DynamicThreshold.c  .generated_files/flags/DSP_TU/855ae4c36953325a9fa9cf310055181609bf7f24 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d" -o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ../src/DynamicThreshold.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/agc.o: ../src/agc.c  .generated_files/flags/DSP_TU/c7ff98c1266e3ff4da4a365a83a203e672c5e7f .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/agc.o.d" -o ${OBJECTDIR}/_ext/1360937237/agc.o ../src/agc.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fifo16.o: ../src/fifo16.c  .generated_files/flags/DSP_TU/e6ecb3623470896f0b7cc2690235aebcd22c4184 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fifo16.o.d" -o ${OBJECTDIR}/_ext/1360937237/fifo16.o ../src/fifo16.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/display.o: ../src/display.c  .generated_files/flags/DSP_TU/8797d5eb1f36208f9149ec2b7332c58dc6659889 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/display.o.d" -o ${OBJECTDIR}/_ext/1360937237/display.o ../src/display.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/xyScope.o: ../src/xyScope.c  .generated_files/flags/DSP_TU/167585c2ef8407ece8ed6a5d674b97e0d87b1d23 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/xyScope.o.d" -o ${OBJECTDIR}/_ext/1360937237/xyScope.o ../src/xyScope.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1736525323/plib_adchs.o: ../src/config/DSP_TU/peripheral/adchs/plib_adchs.c  .generated_files/flags/DSP_TU/fa8a37e32127e39bcd69a12790571d11d2eced38 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1736525323" 
	@${RM} ${OBJECTDIR}/_ext/1736525323/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1736525323/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1736525323/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1736525323/plib_adchs.o ../src/config/DSP_TU/peripheral/adchs/plib_adchs.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2093422612/plib_clk.o: ../src/config/DSP_TU/peripheral/clk/plib_clk.c  .generated_files/flags/DSP_TU/3e7ab0f8a35b5fdafbaa52caf945ba923ef856de .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2093422612" 
	@${RM} ${OBJECTDIR}/_ext/2093422612/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/2093422612/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2093422612/plib_clk.o.d" -o ${OBJECTDIR}/_ext/2093422612/plib_clk.o ../src/config/DSP_TU/peripheral/clk/plib_clk.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/471522303/plib_evic.o: ../src/config/DSP_TU/peripheral/evic/plib_evic.c  .generated_files/flags/DSP_TU/8e4adaf9ab54e74e18d59f003dad3aa3bb15b21b .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/471522303" 
	@${RM} ${OBJECTDIR}/_ext/471522303/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/471522303/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/471522303/plib_evic.o.d" -o ${OBJECTDIR}/_ext/471522303/plib_evic.o ../src/config/DSP_TU/peripheral/evic/plib_evic.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/471468475/plib_gpio.o: ../src/config/DSP_TU/peripheral/gpio/plib_gpio.c  .generated_files/flags/DSP_TU/4efe3afe57d9d6d39e182970cca426642f211d91 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/471468475" 
	@${RM} ${OBJECTDIR}/_ext/471468475/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/471468475/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/471468475/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/471468475/plib_gpio.o ../src/config/DSP_TU/peripheral/gpio/plib_gpio.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/471242515/plib_ocmp1.o: ../src/config/DSP_TU/peripheral/ocmp/plib_ocmp1.c  .generated_files/flags/DSP_TU/e8475f994586b599fe6a820c52af2917aef3bbf1 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/471242515" 
	@${RM} ${OBJECTDIR}/_ext/471242515/plib_ocmp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/471242515/plib_ocmp1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/471242515/plib_ocmp1.o.d" -o ${OBJECTDIR}/_ext/471242515/plib_ocmp1.o ../src/config/DSP_TU/peripheral/ocmp/plib_ocmp1.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/477210738/plib_spi1_master.o: ../src/config/DSP_TU/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/DSP_TU/b557611e161dc11a239e527a312dd48ae7e9b0ca .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/477210738" 
	@${RM} ${OBJECTDIR}/_ext/477210738/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/477210738/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/477210738/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/477210738/plib_spi1_master.o ../src/config/DSP_TU/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2093406237/plib_tmr2.o: ../src/config/DSP_TU/peripheral/tmr/plib_tmr2.c  .generated_files/flags/DSP_TU/39f697766a5bdbcc859d3ab4a615ee02931a1f9d .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2093406237" 
	@${RM} ${OBJECTDIR}/_ext/2093406237/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/2093406237/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2093406237/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/2093406237/plib_tmr2.o ../src/config/DSP_TU/peripheral/tmr/plib_tmr2.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/471065532/plib_uart2.o: ../src/config/DSP_TU/peripheral/uart/plib_uart2.c  .generated_files/flags/DSP_TU/f68f151d8bac62e9a8cfa4d1655aa905ef4a9733 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/471065532" 
	@${RM} ${OBJECTDIR}/_ext/471065532/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/471065532/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/471065532/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/471065532/plib_uart2.o ../src/config/DSP_TU/peripheral/uart/plib_uart2.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2030120972/xc32_monitor.o: ../src/config/DSP_TU/stdio/xc32_monitor.c  .generated_files/flags/DSP_TU/932da3c9d1db609b04e058681ea334ae5f1a3ba8 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2030120972" 
	@${RM} ${OBJECTDIR}/_ext/2030120972/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/2030120972/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2030120972/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/2030120972/xc32_monitor.o ../src/config/DSP_TU/stdio/xc32_monitor.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1044038098/initialization.o: ../src/config/DSP_TU/initialization.c  .generated_files/flags/DSP_TU/65040a73a897bfc9a06555b64271e5bfda809887 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1044038098" 
	@${RM} ${OBJECTDIR}/_ext/1044038098/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1044038098/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1044038098/initialization.o.d" -o ${OBJECTDIR}/_ext/1044038098/initialization.o ../src/config/DSP_TU/initialization.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1044038098/interrupts.o: ../src/config/DSP_TU/interrupts.c  .generated_files/flags/DSP_TU/ed9c3f1cfd368e446443943e1d0c743e74cc5f19 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1044038098" 
	@${RM} ${OBJECTDIR}/_ext/1044038098/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1044038098/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1044038098/interrupts.o.d" -o ${OBJECTDIR}/_ext/1044038098/interrupts.o ../src/config/DSP_TU/interrupts.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1044038098/exceptions.o: ../src/config/DSP_TU/exceptions.c  .generated_files/flags/DSP_TU/f382927efd252fbf0d9f03be1f81622e9b1c5588 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1044038098" 
	@${RM} ${OBJECTDIR}/_ext/1044038098/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1044038098/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1044038098/exceptions.o.d" -o ${OBJECTDIR}/_ext/1044038098/exceptions.o ../src/config/DSP_TU/exceptions.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/DSP_TU/8d56ba901227a60224e820629579888a4be929b2 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o: ../src/PwmAudioOut.c  .generated_files/flags/DSP_TU/4ae832bd7432cc50d87b380b7e7f207900ecbb51 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d" -o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ../src/PwmAudioOut.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/biquad.o: ../src/biquad.c  .generated_files/flags/DSP_TU/87d52f0a8b68ce54deb21dd3a0875e5b9c0c066d .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/biquad.o.d" -o ${OBJECTDIR}/_ext/1360937237/biquad.o ../src/biquad.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dds.o: ../src/dds.c  .generated_files/flags/DSP_TU/1746b4e2c4550bb7873d2472fc52b0fc2b69b02a .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dds.o.d" -o ${OBJECTDIR}/_ext/1360937237/dds.o ../src/dds.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o: ../src/DynamicThreshold.c  .generated_files/flags/DSP_TU/d709a9badf43dc2c3dfd782d3b594493205e496c .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d" -o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ../src/DynamicThreshold.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/agc.o: ../src/agc.c  .generated_files/flags/DSP_TU/e40e18755e653b13fe0d2e13c3ea56ed2c73b02a .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/agc.o.d" -o ${OBJECTDIR}/_ext/1360937237/agc.o ../src/agc.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fifo16.o: ../src/fifo16.c  .generated_files/flags/DSP_TU/6c95fcebf1d7acf0a34f191d708dcdc208dd95a6 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fifo16.o.d" -o ${OBJECTDIR}/_ext/1360937237/fifo16.o ../src/fifo16.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/display.o: ../src/display.c  .generated_files/flags/DSP_TU/444f574a9fc83b4e0804a0912c40cde6b7896266 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/display.o.d" -o ${OBJECTDIR}/_ext/1360937237/display.o ../src/display.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/xyScope.o: ../src/xyScope.c  .generated_files/flags/DSP_TU/30c3e4b1a7bc8aab06bc8c4cbb98c696762eea9c .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/xyScope.o.d" -o ${OBJECTDIR}/_ext/1360937237/xyScope.o ../src/xyScope.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/DSP_TU.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/DSP_TU/p32MZ2048EFM100.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/DSP_TU.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=200000,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/DSP_TU.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/DSP_TU/p32MZ2048EFM100.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/DSP_TU.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=200000,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/DSP_TU.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

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
