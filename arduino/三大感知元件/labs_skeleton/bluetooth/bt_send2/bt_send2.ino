int iLedPin = 13;
void setup() {
   // devine the PIN as OUOTPUT
  pinMode(iLedPin, OUTPUT);
  // put your setup code here, to run once:
  Serial.begin(38400);
}

void loop() {
  // put your main code here, to run repeatedly: 
  Serial.write('o');
  delay(1000);
  Serial.write('c');
  delay(1000);      
}

void serialEvent(){
	////////// �q��LŪ�����

	////////// �L�X����r��

	////////// �p�G�O'x'led�O�G
	
	////////// �p�G�O'y'led�O�t

}

