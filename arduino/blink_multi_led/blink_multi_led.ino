void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  for (int thisPin=2;thisPin<7;thisPin++){
    pinMode(thisPin, OUTPUT);
  }
}

void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available()>0){
    char inByte = Serial.read();
    switch (inByte) {
      case 'a':
          Serial.println((int)inByte);
          digitalWrite(2,HIGH);
          break;
      default:
          break;  
    }
    

  }
}
