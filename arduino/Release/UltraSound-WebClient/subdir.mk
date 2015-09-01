################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../UltraSound-WebClient/UltraSound-WebClient2.cpp 

CPP_DEPS += \
./UltraSound-WebClient/UltraSound-WebClient2.cpp.d 

LINK_OBJ += \
./UltraSound-WebClient/UltraSound-WebClient2.cpp.o 


# Each subdirectory must supply rules for building sources it contributes
UltraSound-WebClient/UltraSound-WebClient2.cpp.o: ../UltraSound-WebClient/UltraSound-WebClient2.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-g++" -c -g -Os -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '


