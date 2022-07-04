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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/DSP_TU/peripheral/adchs/plib_adchs.c ../src/config/DSP_TU/peripheral/clk/plib_clk.c ../src/config/DSP_TU/peripheral/evic/plib_evic.c ../src/config/DSP_TU/peripheral/gpio/plib_gpio.c ../src/config/DSP_TU/peripheral/ocmp/plib_ocmp1.c ../src/config/DSP_TU/peripheral/tmr/plib_tmr2.c ../src/config/DSP_TU/peripheral/uart/plib_uart2.c ../src/config/DSP_TU/stdio/xc32_monitor.c ../src/config/DSP_TU/initialization.c ../src/config/DSP_TU/interrupts.c ../src/config/DSP_TU/exceptions.c ../src/main.c ../src/PwmAudioOut.c ../src/biquad.c ../src/dds.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1736525323/plib_adchs.o ${OBJECTDIR}/_ext/2093422612/plib_clk.o ${OBJECTDIR}/_ext/471522303/plib_evic.o ${OBJECTDIR}/_ext/471468475/plib_gpio.o ${OBJECTDIR}/_ext/471242515/plib_ocmp1.o ${OBJECTDIR}/_ext/2093406237/plib_tmr2.o ${OBJECTDIR}/_ext/471065532/plib_uart2.o ${OBJECTDIR}/_ext/2030120972/xc32_monitor.o ${OBJECTDIR}/_ext/1044038098/initialization.o ${OBJECTDIR}/_ext/1044038098/interrupts.o ${OBJECTDIR}/_ext/1044038098/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ${OBJECTDIR}/_ext/1360937237/biquad.o ${OBJECTDIR}/_ext/1360937237/dds.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1736525323/plib_adchs.o.d ${OBJECTDIR}/_ext/2093422612/plib_clk.o.d ${OBJECTDIR}/_ext/471522303/plib_evic.o.d ${OBJECTDIR}/_ext/471468475/plib_gpio.o.d ${OBJECTDIR}/_ext/471242515/plib_ocmp1.o.d ${OBJECTDIR}/_ext/2093406237/plib_tmr2.o.d ${OBJECTDIR}/_ext/471065532/plib_uart2.o.d ${OBJECTDIR}/_ext/2030120972/xc32_monitor.o.d ${OBJECTDIR}/_ext/1044038098/initialization.o.d ${OBJECTDIR}/_ext/1044038098/interrupts.o.d ${OBJECTDIR}/_ext/1044038098/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d ${OBJECTDIR}/_ext/1360937237/biquad.o.d ${OBJECTDIR}/_ext/1360937237/dds.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1736525323/plib_adchs.o ${OBJECTDIR}/_ext/2093422612/plib_clk.o ${OBJECTDIR}/_ext/471522303/plib_evic.o ${OBJECTDIR}/_ext/471468475/plib_gpio.o ${OBJECTDIR}/_ext/471242515/plib_ocmp1.o ${OBJECTDIR}/_ext/2093406237/plib_tmr2.o ${OBJECTDIR}/_ext/471065532/plib_uart2.o ${OBJECTDIR}/_ext/2030120972/xc32_monitor.o ${OBJECTDIR}/_ext/1044038098/initialization.o ${OBJECTDIR}/_ext/1044038098/interrupts.o ${OBJECTDIR}/_ext/1044038098/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ${OBJECTDIR}/_ext/1360937237/biquad.o ${OBJECTDIR}/_ext/1360937237/dds.o

# Source Files
SOURCEFILES=../src/config/DSP_TU/peripheral/adchs/plib_adchs.c ../src/config/DSP_TU/peripheral/clk/plib_clk.c ../src/config/DSP_TU/peripheral/evic/plib_evic.c ../src/config/DSP_TU/peripheral/gpio/plib_gpio.c ../src/config/DSP_TU/peripheral/ocmp/plib_ocmp1.c ../src/config/DSP_TU/peripheral/tmr/plib_tmr2.c ../src/config/DSP_TU/peripheral/uart/plib_uart2.c ../src/config/DSP_TU/stdio/xc32_monitor.c ../src/config/DSP_TU/initialization.c ../src/config/DSP_TU/interrupts.c ../src/config/DSP_TU/exceptions.c ../src/main.c ../src/PwmAudioOut.c ../src/biquad.c ../src/dds.c



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
${OBJECTDIR}/_ext/1736525323/plib_adchs.o: ../src/config/DSP_TU/peripheral/adchs/plib_adchs.c  .generated_files/flags/DSP_TU/74823bd1a5044360015cd46715a0441233f2369b .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1736525323" 
	@${RM} ${OBJECTDIR}/_ext/1736525323/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1736525323/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1736525323/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1736525323/plib_adchs.o ../src/config/DSP_TU/peripheral/adchs/plib_adchs.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2093422612/plib_clk.o: ../src/config/DSP_TU/peripheral/clk/plib_clk.c  .generated_files/flags/DSP_TU/c68feec39499b1ee2d8bb21ba028b1ea21b8a28b .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2093422612" 
	@${RM} ${OBJECTDIR}/_ext/2093422612/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/2093422612/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2093422612/plib_clk.o.d" -o ${OBJECTDIR}/_ext/2093422612/plib_clk.o ../src/config/DSP_TU/peripheral/clk/plib_clk.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/471522303/plib_evic.o: ../src/config/DSP_TU/peripheral/evic/plib_evic.c  .generated_files/flags/DSP_TU/f7c2ac02ceaecbe7ad7d14145e4563dff47aecac .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/471522303" 
	@${RM} ${OBJECTDIR}/_ext/471522303/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/471522303/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/471522303/plib_evic.o.d" -o ${OBJECTDIR}/_ext/471522303/plib_evic.o ../src/config/DSP_TU/peripheral/evic/plib_evic.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/471468475/plib_gpio.o: ../src/config/DSP_TU/peripheral/gpio/plib_gpio.c  .generated_files/flags/DSP_TU/cb2ec5bbb5ed7696feb71a283309796aa94a95f .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/471468475" 
	@${RM} ${OBJECTDIR}/_ext/471468475/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/471468475/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/471468475/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/471468475/plib_gpio.o ../src/config/DSP_TU/peripheral/gpio/plib_gpio.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/471242515/plib_ocmp1.o: ../src/config/DSP_TU/peripheral/ocmp/plib_ocmp1.c  .generated_files/flags/DSP_TU/820662a2f593307d5fd70697e17e57a30f357271 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/471242515" 
	@${RM} ${OBJECTDIR}/_ext/471242515/plib_ocmp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/471242515/plib_ocmp1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/471242515/plib_ocmp1.o.d" -o ${OBJECTDIR}/_ext/471242515/plib_ocmp1.o ../src/config/DSP_TU/peripheral/ocmp/plib_ocmp1.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2093406237/plib_tmr2.o: ../src/config/DSP_TU/peripheral/tmr/plib_tmr2.c  .generated_files/flags/DSP_TU/fd7eb7173374ab9ad8a2b02ccb464703152acf91 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2093406237" 
	@${RM} ${OBJECTDIR}/_ext/2093406237/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/2093406237/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2093406237/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/2093406237/plib_tmr2.o ../src/config/DSP_TU/peripheral/tmr/plib_tmr2.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/471065532/plib_uart2.o: ../src/config/DSP_TU/peripheral/uart/plib_uart2.c  .generated_files/flags/DSP_TU/3c507d30deaac956277bdb11a5424fcc3812bfa3 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/471065532" 
	@${RM} ${OBJECTDIR}/_ext/471065532/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/471065532/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/471065532/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/471065532/plib_uart2.o ../src/config/DSP_TU/peripheral/uart/plib_uart2.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2030120972/xc32_monitor.o: ../src/config/DSP_TU/stdio/xc32_monitor.c  .generated_files/flags/DSP_TU/cd65acb88e420ea27d9550b53b9c692e95d2eb53 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2030120972" 
	@${RM} ${OBJECTDIR}/_ext/2030120972/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/2030120972/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2030120972/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/2030120972/xc32_monitor.o ../src/config/DSP_TU/stdio/xc32_monitor.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1044038098/initialization.o: ../src/config/DSP_TU/initialization.c  .generated_files/flags/DSP_TU/3dbe700550e62d1560091f3018ad30addb5e8986 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1044038098" 
	@${RM} ${OBJECTDIR}/_ext/1044038098/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1044038098/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1044038098/initialization.o.d" -o ${OBJECTDIR}/_ext/1044038098/initialization.o ../src/config/DSP_TU/initialization.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1044038098/interrupts.o: ../src/config/DSP_TU/interrupts.c  .generated_files/flags/DSP_TU/ceeaec710399200ade345ce0bc4b8d8e62585587 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1044038098" 
	@${RM} ${OBJECTDIR}/_ext/1044038098/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1044038098/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1044038098/interrupts.o.d" -o ${OBJECTDIR}/_ext/1044038098/interrupts.o ../src/config/DSP_TU/interrupts.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1044038098/exceptions.o: ../src/config/DSP_TU/exceptions.c  .generated_files/flags/DSP_TU/9ae6429da9993fa26d73561b185e85ef12cf893b .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1044038098" 
	@${RM} ${OBJECTDIR}/_ext/1044038098/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1044038098/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1044038098/exceptions.o.d" -o ${OBJECTDIR}/_ext/1044038098/exceptions.o ../src/config/DSP_TU/exceptions.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/DSP_TU/99e263516397c14c99377538cfab9026b4c3e91 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o: ../src/PwmAudioOut.c  .generated_files/flags/DSP_TU/5b233cab449435ea2ea7674cdf5fb16650488492 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d" -o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ../src/PwmAudioOut.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/biquad.o: ../src/biquad.c  .generated_files/flags/DSP_TU/96637a191568b8054c88ff7b681949b810efba35 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/biquad.o.d" -o ${OBJECTDIR}/_ext/1360937237/biquad.o ../src/biquad.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dds.o: ../src/dds.c  .generated_files/flags/DSP_TU/6c1f941e4dadf3b668a4cb98295eff86e22f44d3 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dds.o.d" -o ${OBJECTDIR}/_ext/1360937237/dds.o ../src/dds.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1736525323/plib_adchs.o: ../src/config/DSP_TU/peripheral/adchs/plib_adchs.c  .generated_files/flags/DSP_TU/f223abd6693cd8298c13cc9f209773d6b824726a .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1736525323" 
	@${RM} ${OBJECTDIR}/_ext/1736525323/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1736525323/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1736525323/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1736525323/plib_adchs.o ../src/config/DSP_TU/peripheral/adchs/plib_adchs.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2093422612/plib_clk.o: ../src/config/DSP_TU/peripheral/clk/plib_clk.c  .generated_files/flags/DSP_TU/2febd89cd3caf035476b1332e36f654d6c77ccde .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2093422612" 
	@${RM} ${OBJECTDIR}/_ext/2093422612/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/2093422612/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2093422612/plib_clk.o.d" -o ${OBJECTDIR}/_ext/2093422612/plib_clk.o ../src/config/DSP_TU/peripheral/clk/plib_clk.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/471522303/plib_evic.o: ../src/config/DSP_TU/peripheral/evic/plib_evic.c  .generated_files/flags/DSP_TU/ebce1072e4bcc5e64e52d28e190400bb9d2ddebd .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/471522303" 
	@${RM} ${OBJECTDIR}/_ext/471522303/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/471522303/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/471522303/plib_evic.o.d" -o ${OBJECTDIR}/_ext/471522303/plib_evic.o ../src/config/DSP_TU/peripheral/evic/plib_evic.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/471468475/plib_gpio.o: ../src/config/DSP_TU/peripheral/gpio/plib_gpio.c  .generated_files/flags/DSP_TU/67254b4e931cee521836b95ea62edb4cdeb72d2c .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/471468475" 
	@${RM} ${OBJECTDIR}/_ext/471468475/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/471468475/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/471468475/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/471468475/plib_gpio.o ../src/config/DSP_TU/peripheral/gpio/plib_gpio.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/471242515/plib_ocmp1.o: ../src/config/DSP_TU/peripheral/ocmp/plib_ocmp1.c  .generated_files/flags/DSP_TU/35cfb30e0fe7c1827791f55e725d345690547287 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/471242515" 
	@${RM} ${OBJECTDIR}/_ext/471242515/plib_ocmp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/471242515/plib_ocmp1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/471242515/plib_ocmp1.o.d" -o ${OBJECTDIR}/_ext/471242515/plib_ocmp1.o ../src/config/DSP_TU/peripheral/ocmp/plib_ocmp1.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2093406237/plib_tmr2.o: ../src/config/DSP_TU/peripheral/tmr/plib_tmr2.c  .generated_files/flags/DSP_TU/1f1e48dda5adc464358cf1ef1226b4251968999d .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2093406237" 
	@${RM} ${OBJECTDIR}/_ext/2093406237/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/2093406237/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2093406237/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/2093406237/plib_tmr2.o ../src/config/DSP_TU/peripheral/tmr/plib_tmr2.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/471065532/plib_uart2.o: ../src/config/DSP_TU/peripheral/uart/plib_uart2.c  .generated_files/flags/DSP_TU/578fec80558a2ffc43a9047c690470b3bfeb65f1 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/471065532" 
	@${RM} ${OBJECTDIR}/_ext/471065532/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/471065532/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/471065532/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/471065532/plib_uart2.o ../src/config/DSP_TU/peripheral/uart/plib_uart2.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2030120972/xc32_monitor.o: ../src/config/DSP_TU/stdio/xc32_monitor.c  .generated_files/flags/DSP_TU/7701fe1623f1f68d640131ebce5750c88c746a2e .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2030120972" 
	@${RM} ${OBJECTDIR}/_ext/2030120972/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/2030120972/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2030120972/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/2030120972/xc32_monitor.o ../src/config/DSP_TU/stdio/xc32_monitor.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1044038098/initialization.o: ../src/config/DSP_TU/initialization.c  .generated_files/flags/DSP_TU/c4296c127d5b9117e24d49e8ccc9f52fafdc6dab .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1044038098" 
	@${RM} ${OBJECTDIR}/_ext/1044038098/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1044038098/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1044038098/initialization.o.d" -o ${OBJECTDIR}/_ext/1044038098/initialization.o ../src/config/DSP_TU/initialization.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1044038098/interrupts.o: ../src/config/DSP_TU/interrupts.c  .generated_files/flags/DSP_TU/b554f639508d1f05b97a4aebfcd981e687da41a5 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1044038098" 
	@${RM} ${OBJECTDIR}/_ext/1044038098/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1044038098/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1044038098/interrupts.o.d" -o ${OBJECTDIR}/_ext/1044038098/interrupts.o ../src/config/DSP_TU/interrupts.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1044038098/exceptions.o: ../src/config/DSP_TU/exceptions.c  .generated_files/flags/DSP_TU/6aadf1cffd11082bff2b8873e31385dbc0976da .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1044038098" 
	@${RM} ${OBJECTDIR}/_ext/1044038098/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1044038098/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1044038098/exceptions.o.d" -o ${OBJECTDIR}/_ext/1044038098/exceptions.o ../src/config/DSP_TU/exceptions.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/DSP_TU/92b6b2bb6d6cb86421d16d3950e78407e1f86edd .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o: ../src/PwmAudioOut.c  .generated_files/flags/DSP_TU/21a49fabc6b46fe6fa055ef1d47c34c68107c67f .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d" -o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ../src/PwmAudioOut.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/biquad.o: ../src/biquad.c  .generated_files/flags/DSP_TU/915b422377409eb1bde9a1397609da6639aee162 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/biquad.o.d" -o ${OBJECTDIR}/_ext/1360937237/biquad.o ../src/biquad.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dds.o: ../src/dds.c  .generated_files/flags/DSP_TU/1ac5869a386efdf50abd6fe28cc18a89cc560611 .generated_files/flags/DSP_TU/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dds.o.d" -o ${OBJECTDIR}/_ext/1360937237/dds.o ../src/dds.c    -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/DSP_TU.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=1024,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/DSP_TU.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/DSP_TU/p32MZ2048EFM100.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/DSP_TU.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_DSP_TU=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1024,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
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
