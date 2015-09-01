################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/ipv4/autoip.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/ipv4/icmp.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/ipv4/igmp.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/ipv4/inet.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/ipv4/inet_chksum.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/ipv4/ip.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/ipv4/ip_addr.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/ipv4/ip_frag.c 

C_DEPS += \
./arduino/autoip.c.d \
./arduino/icmp.c.d \
./arduino/igmp.c.d \
./arduino/inet.c.d \
./arduino/inet_chksum.c.d \
./arduino/ip.c.d \
./arduino/ip_addr.c.d \
./arduino/ip_frag.c.d 

AR_OBJ += \
./arduino/autoip.c.o \
./arduino/icmp.c.o \
./arduino/igmp.c.o \
./arduino/inet.c.o \
./arduino/inet_chksum.c.o \
./arduino/ip.c.o \
./arduino/ip_addr.c.o \
./arduino/ip_frag.c.o 


# Each subdirectory must supply rules for building sources it contributes
arduino/autoip.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/ipv4/autoip.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/icmp.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/ipv4/icmp.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/igmp.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/ipv4/igmp.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/inet.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/ipv4/inet.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/inet_chksum.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/ipv4/inet_chksum.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/ip.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/ipv4/ip.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/ip_addr.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/ipv4/ip_addr.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/ip_frag.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/ipv4/ip_frag.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '


