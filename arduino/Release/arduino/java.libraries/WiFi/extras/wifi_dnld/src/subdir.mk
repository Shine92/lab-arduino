################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifi_dnld/src/clocks.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifi_dnld/src/flash_fw.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifi_dnld/src/nor_flash.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifi_dnld/src/printf-stdarg.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifi_dnld/src/startup.c 

C_DEPS += \
./arduino/clocks.c.d \
./arduino/flash_fw.c.d \
./arduino/nor_flash.c.d \
./arduino/printf-stdarg.c.d \
./arduino/startup.c.d 

AR_OBJ += \
./arduino/clocks.c.o \
./arduino/flash_fw.c.o \
./arduino/nor_flash.c.o \
./arduino/startup.c.o 


# Each subdirectory must supply rules for building sources it contributes
arduino/clocks.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifi_dnld/src/clocks.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/flash_fw.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifi_dnld/src/flash_fw.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/nor_flash.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifi_dnld/src/nor_flash.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/printf-stdarg.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifi_dnld/src/printf-stdarg.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/startup.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifi_dnld/src/startup.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '


