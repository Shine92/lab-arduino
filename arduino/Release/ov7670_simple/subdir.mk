################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ov7670_simple/ov7670.cpp 

CPP_DEPS += \
./ov7670_simple/ov7670.cpp.d 

LINK_OBJ += \
./ov7670_simple/ov7670.cpp.o 


# Each subdirectory must supply rules for building sources it contributes
ov7670_simple/ov7670.cpp.o: ../ov7670_simple/ov7670.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-g++" -c -g -Os -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '


