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
	////////// �q��LŪ�����

	////////// �L�X����r��

	////////// �p�G�O'o'led�O�G
	
	////////// �p�G�O'c'led�O�t 
}

