int timer=100;
boolean isOn=false;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  for (int thisPin=2;thisPin<7;thisPin++){
    pinMode(thisPin, OUTPUT);
  }
  pinMode(7, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  int val=digitalRead(7);
  Serial.println(val);
  
  if (val == LOW){
    for (int thisPin=2;thisPin<7;thisPin++){
      digitalWrite(thisPin,LOW);
    }
  } else {
      for (int thisPin=2;thisPin<7;thisPin++){
        digitalWrite(thisPin,HIGH);
        delay(timer);
        digitalWrite(thisPin,LOW);
      }
    
      for (int thisPin=7;thisPin>=2;thisPin--){
        digitalWrite(thisPin,HIGH);
        delay(timer);
        digitalWrite(thisPin,LOW);
      }
  }

}
