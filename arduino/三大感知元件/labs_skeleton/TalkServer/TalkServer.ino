
/***************************************************
  Adafruit CC3000 Breakout/Shield TCP Echo Server

  This is a simple implementation of the echo
  protocol, RFC 862 http://tools.ietf.org/html/rfc862 ,
  for the Arduino platform and Adafruit CC3000 breakout
  or shield.  This sketch will create a TCP server that
  listens by default on port 7 and echos back any data
  received.  Up to 3 clients can be connected concurrently
  to the server.  This sketch is meant as an example of how
  to write a simple server with the Arduino and CC3000.

  See the CC3000 tutorial on Adafruit's learning system
  for more information on setting up and using the
  CC3000:
    http://learn.adafruit.com/adafruit-cc3000-wifi

  Requirements:

  This sketch requires the Adafruit CC3000 library.  You can
  download the library from:
    https://github.com/adafruit/Adafruit_CC3000_Library

  For information on installing libraries in the Arduino IDE
  see this page:
    http://arduino.cc/en/Guide/Libraries

  Usage:

  Update the SSID and, if necessary, the CC3000 hardware pin
  information below, then run the sketch and check the
  output of the serial port.  After connecting to the
  wireless network successfully the sketch will output
  the IP address of the server and start listening for
  connections.  Once listening for connections, connect
  to the server from your computer  using a telnet client
  on port 7.

  For example on Linux or Mac OSX, if your CC3000 has an
  IP address 192.168.1.100 you would execute in a command
  window:

    telnet 192.168.1.100 7

  After connecting, notice that as you type input and
  press enter to send it the CC3000 will echo back exactly
  what you typed.  Press ctrl-] and type quit at the prompt
  to close the telnet session.

  On Windows you'll need to download a telnet client.  PuTTY
  is a good, free GUI client:
    http://www.chiark.greenend.org.uk/~sgtatham/putty/

  License:

  This example is copyright (c) 2013 Tony DiCola (tony@tonydicola.com)
  and is released under an open source MIT license.  See details at:
    http://opensource.org/licenses/MIT

  This code was adapted from Adafruit CC3000 library example
  code which has the following license:

  Designed specifically to work with the Adafruit WiFi products:
  ----> https://www.adafruit.com/products/1469

  Adafruit invests time and resources providing this open source code,
  please support Adafruit and open-source hardware by purchasing
  products from Adafruit!

  Written by Limor Fried & Kevin Townsend for Adafruit Industries.
  BSD license, all text above must be included in any redistribution
 ****************************************************/
#include <Adafruit_CC3000.h>
#include <SPI.h>
#include "utility/debug.h"
#include "utility/socket.h"

// These are the interrupt and control pins
#define ADAFRUIT_CC3000_IRQ   3  // MUST be an interrupt pin!
// These can be any two pins
#define ADAFRUIT_CC3000_VBAT  5
#define ADAFRUIT_CC3000_CS    10
// Use hardware SPI for the remaining pins
// On an UNO, SCK = 13, MISO = 12, and MOSI = 11
Adafruit_CC3000 cc3000 = Adafruit_CC3000(ADAFRUIT_CC3000_CS, ADAFRUIT_CC3000_IRQ, ADAFRUIT_CC3000_VBAT,
                                         SPI_CLOCK_DIVIDER); // you can change this clock speed

#define WLAN_SSID       "III-Classroom-2001"//"Herbert's HTC"//"henry's zf2"//           // cannot be longer than 32 characters!
#define WLAN_PASS       "1234567890"//"19881018"//"03241111"//
// Security can be WLAN_SEC_UNSEC, WLAN_SEC_WEP, WLAN_SEC_WPA or WLAN_SEC_WPA2
#define WLAN_SECURITY   WLAN_SEC_WPA2

#define LISTEN_PORT           7    // What TCP port to listen on for connections.  The echo protocol uses port 7.

Adafruit_CC3000_Server echoServer(LISTEN_PORT);
boolean stringComplete=false;
String inputString="from Serial:";
char str[100]="";
int pinLed1=2;
int pinLed2=4;
int pinLed3=6;
int pinLed4=8;
uint8_t switchCommand[4];
int switchCommandPosition=0;

void setup(void)
{
  pinMode(pinLed1,OUTPUT);
  pinMode(pinLed2,OUTPUT);
  pinMode(pinLed3,OUTPUT);
  pinMode(pinLed4,OUTPUT);
  
  Serial.begin(115200);
  



  
  Serial.println(F("Hello, CC3000!\n"));
  

  Serial.print("Free RAM: "); Serial.println(getFreeRam(), DEC);

  /* Initialise the module */
  Serial.println(F("\nInitializing..."));
  if (!cc3000.begin())
  {
    Serial.println(F("Couldn't begin()! Check your wiring?"));
    while(1);
  }

  if (!cc3000.connectToAP(WLAN_SSID, WLAN_PASS, WLAN_SECURITY)) {
    Serial.println(F("Failed!"));
    while(1);
  }

  Serial.println(F("Connected!"));

  Serial.println(F("Request DHCP"));
  while (!cc3000.checkDHCP())
  {
    delay(100); // ToDo: Insert a DHCP timeout!
  }

  /* Display the IP address DNS, Gateway, etc. */
  while (! displayConnectionDetails()) {
    delay(1000);
  }

  /*********************************************************/
  /* You can safely remove this to save some flash memory! */
  /*********************************************************/
  Serial.println(F("\r\nNOTE: This sketch may cause problems with other sketches"));
  Serial.println(F("since the .disconnect() function is never called, so the"));
  Serial.println(F("AP may refuse connection requests from the CC3000 until a"));
  Serial.println(F("timeout period passes.  This is normal behaviour since"));
  Serial.println(F("there isn't an obvious moment to disconnect with a server.\r\n"));

  // Start listening for connections
  echoServer.begin();

  Serial.println(F("Listening for connections..."));
}

void loop(void)
{
  // Try to get a client which is connected.
  Adafruit_CC3000_ClientRef client = echoServer.available();
  if (client) {
     // Check if there is data available to read.
     if (client.available() > 0) {
       // Read a byte and write it to all clients.
       uint8_t ch = client.read();
       switchCommand[switchCommandPosition]=ch;
       switchCommandPosition++;
       if (ch==10){
         switch(switchCommand[1]){
          case 49:
            if (switchCommand[0]==111){
              digitalWrite(pinLed1,HIGH);
            } else if (switchCommand[0]==99) {
              digitalWrite(pinLed1,LOW);
            }
            break;
          case 50:
            if (switchCommand[0]==111){
              digitalWrite(pinLed2,HIGH);
            } else if (switchCommand[0]==99) {
              digitalWrite(pinLed2,LOW);
            }
            break;
          case 51:
            if (switchCommand[0]==111){
              digitalWrite(pinLed3,HIGH);
            } else if (switchCommand[0]==99) {
              digitalWrite(pinLed3,LOW);
            }
            break;
          case 52:
            if (switchCommand[0]==111){
              digitalWrite(pinLed4,HIGH);
            } else if (switchCommand[0]==99) {
              digitalWrite(pinLed4,LOW);
            }
            break;
          default:
            break;
         }
         switchCommandPosition=0;
       }
       Serial.println(ch);
//       Serial.println((char)ch);
       client.write(ch);
     }
  }
  //echoServer.write(65);
  //Serial.println(65);
  if (stringComplete){
    Serial.println(inputString);
    //client.write(inputString[0]);
    //strcpy(str, inputString.c_str());
    //echoServer.write((uint8_t)str[0]);
    inputString="from Serial: ";
    stringComplete=false;
  }
  
//
//  delay(1000);
//  digitalWrite(pinLed1,LOW);
//  digitalWrite(pinLed2,LOW);
//  digitalWrite(pinLed3,LOW);
//  digitalWrite(pinLed4,LOW);
//  delay(1000);
}

void serialEvent(){
  while(Serial.available()){
    char inChar = (char)Serial.read();
    //char inChar='\n';
    inputString+=inChar;
    if (inChar=='\n') {
      stringComplete=true;  
    }
    echoServer.write((int)inChar);
//    str[0]=inChar;
//    Adafruit_CC3000_ClientRef client2 = echoServer.available();
//    echo.write(65);
//    client2.write(str, 100, 0);
  }
}
////////// 從這而開始加程式碼 serialEvent()函數

//String s="";
//char str[100]="";
//void serialEvent(){
	////////// 從鍵盤讀取資料放到字元陣列 str

	////////// 從鍵盤讀取資料

	////////// 將str字元陣列豬的資料送到對方
//      Adafruit_CC3000_ClientRef client2 = echoServer.available();
//      client2.write(str, 100, 0);
//}


/**************************************************************************/
/*!
    @brief  Tries to read the IP address and other connection details
*/
/**************************************************************************/
bool displayConnectionDetails(void)
{
  uint32_t ipAddress, netmask, gateway, dhcpserv, dnsserv;

  if(!cc3000.getIPAddress(&ipAddress, &netmask, &gateway, &dhcpserv, &dnsserv))
  {
    Serial.println(F("Unable to retrieve the IP Address!\r\n"));
    return false;
  }
  else
  {
    Serial.print(F("\nIP Addr: ")); cc3000.printIPdotsRev(ipAddress);
    Serial.print(F("\nNetmask: ")); cc3000.printIPdotsRev(netmask);
    Serial.print(F("\nGateway: ")); cc3000.printIPdotsRev(gateway);
    Serial.print(F("\nDHCPsrv: ")); cc3000.printIPdotsRev(dhcpserv);
    Serial.print(F("\nDNSserv: ")); cc3000.printIPdotsRev(dnsserv);
    Serial.println();
    return true;
  }
}
