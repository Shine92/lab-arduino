int iLedPin = 13;
void setup() {
  // devine the PIN as OUOTPUT
  pinMode(iLedPin, OUTPUT);  
  // using baud rate 9600 to listen
  Serial.begin(38400);
}
void loop() {
    Serial.write('x');
    delay(1000);
    Serial.write('y');
    delay(1000); 
}

void serialEvent(){
	////////// 從鍵盤讀取資料

	////////// 印出收到字元

	////////// 如果是'o'led燈亮
	
	////////// 如果是'c'led燈暗 
}

