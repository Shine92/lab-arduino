int temperature = 2;
int led = 9;
int val,dat;
void setup(){
  pinMode(temperature,INPUT);
  pinMode(led,OUTPUT);
  Serial.begin(9600);
}
void loop(){
  val = analogRead(temperature);
  dat = (125*val)>>8;
  Serial.println(val);
  Serial.println(dat);
//  if (val>=70){
//    digitalWrite(led,HIGH);
//    delay(3000);
//    digitalWrite(led,LOW);
//  }
  delay(1000);
}

