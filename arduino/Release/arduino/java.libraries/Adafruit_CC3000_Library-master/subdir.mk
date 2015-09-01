################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/Applications/Arduino.app/Contents/Java/libraries/Adafruit_CC3000_Library-master/Adafruit_CC3000.cpp \
/Applications/Arduino.app/Contents/Java/libraries/Adafruit_CC3000_Library-master/Adafruit_CC3000_Server.cpp \
/Applications/Arduino.app/Contents/Java/libraries/Adafruit_CC3000_Library-master/ccspi.cpp 

AR_OBJ += \
./arduino/Adafruit_CC3000.cpp.o \
./arduino/Adafruit_CC3000_Server.cpp.o \
./arduino/ccspi.cpp.o 

CPP_DEPS += \
./arduino/Adafruit_CC3000.cpp.d \
./arduino/Adafruit_CC3000_Server.cpp.d \
./arduino/ccspi.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
arduino/Adafruit_CC3000.cpp.o: /Applications/Arduino.app/Contents/Java/libraries/Adafruit_CC3000_Library-master/Adafruit_CC3000.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-g++" -c -g -Os -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/Adafruit_CC3000_Server.cpp.o: /Applications/Arduino.app/Contents/Java/libraries/Adafruit_CC3000_Library-master/Adafruit_CC3000_Server.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-g++" -c -g -Os -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/ccspi.cpp.o: /Applications/Arduino.app/Contents/Java/libraries/Adafruit_CC3000_Library-master/ccspi.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-g++" -c -g -Os -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '


