void setup(){
  pinMode(8,OUTPUT);
  Serial.begin(9600);
}

void loop(){
  int i;
  while(1){
    i=analogRead(5);
    Serial.println(i);
    if(i>0){
      digitalWrite(8,LOW);
    } else {
      digitalWrite(8,HIGH);
    }
  }
}

