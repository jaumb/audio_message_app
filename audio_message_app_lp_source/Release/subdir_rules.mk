################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
audiocodec.obj: ../audiocodec.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib -me -O2 --include_path="/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/inc" -g --gcc --define=cc3200 --define=NOTERM --define=ccs --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="audiocodec.d" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

circ_buff.obj: ../circ_buff.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib -me -O2 --include_path="/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/inc" -g --gcc --define=cc3200 --define=NOTERM --define=ccs --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="circ_buff.d" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

control.obj: ../control.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib -me -O2 --include_path="/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/inc" -g --gcc --define=cc3200 --define=NOTERM --define=ccs --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="control.d" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

gpio_if.obj: /home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common/gpio_if.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib -me -O2 --include_path="/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/inc" -g --gcc --define=cc3200 --define=NOTERM --define=ccs --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="gpio_if.d" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

i2c_if.obj: /home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common/i2c_if.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib -me -O2 --include_path="/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/inc" -g --gcc --define=cc3200 --define=NOTERM --define=ccs --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="i2c_if.d" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

i2s_if.obj: /home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common/i2s_if.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib -me -O2 --include_path="/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/inc" -g --gcc --define=cc3200 --define=NOTERM --define=ccs --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="i2s_if.d" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

main.obj: ../main.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib -me -O2 --include_path="/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/inc" -g --gcc --define=cc3200 --define=NOTERM --define=ccs --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="main.d" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

microphone.obj: ../microphone.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib -me -O2 --include_path="/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/inc" -g --gcc --define=cc3200 --define=NOTERM --define=ccs --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="microphone.d" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

network.obj: ../network.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib -me -O2 --include_path="/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/inc" -g --gcc --define=cc3200 --define=NOTERM --define=ccs --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="network.d" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

pcm_handler.obj: ../pcm_handler.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib -me -O2 --include_path="/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/inc" -g --gcc --define=cc3200 --define=NOTERM --define=ccs --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="pcm_handler.d" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

pinmux.obj: ../pinmux.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib -me -O2 --include_path="/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/inc" -g --gcc --define=cc3200 --define=NOTERM --define=ccs --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="pinmux.d" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

smartconfig.obj: ../smartconfig.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib -me -O2 --include_path="/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/inc" -g --gcc --define=cc3200 --define=NOTERM --define=ccs --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="smartconfig.d" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

speaker.obj: ../speaker.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib -me -O2 --include_path="/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/inc" -g --gcc --define=cc3200 --define=NOTERM --define=ccs --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="speaker.d" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

startup_ccs.obj: /home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common/startup_ccs.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib -me -O2 --include_path="/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/inc" -g --gcc --define=cc3200 --define=NOTERM --define=ccs --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="startup_ccs.d" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

timer_if.obj: /home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common/timer_if.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib -me -O2 --include_path="/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/inc" -g --gcc --define=cc3200 --define=NOTERM --define=ccs --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="timer_if.d" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

uart_if.obj: /home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common/uart_if.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib -me -O2 --include_path="/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/inc" -g --gcc --define=cc3200 --define=NOTERM --define=ccs --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="uart_if.d" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

udma_if.obj: /home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common/udma_if.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib -me -O2 --include_path="/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/inc" -g --gcc --define=cc3200 --define=NOTERM --define=ccs --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="udma_if.d" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '

wdt_if.obj: /home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common/wdt_if.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=vfplib -me -O2 --include_path="/home/jeff/lib/embedded/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/include" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/simplelink/source" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/example/common" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/oslib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/driverlib" --include_path="/home/jeff/lib/embedded/ccsv6/ti/tirex-content/CC3200SDK_1.1.0/cc3200-sdk/inc" -g --gcc --define=cc3200 --define=NOTERM --define=ccs --define=USE_FREERTOS --define=SL_PLATFORM_MULTI_THREADED --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="wdt_if.d" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: $<'
	@echo ' '


