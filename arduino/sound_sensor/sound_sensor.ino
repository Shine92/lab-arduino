int sound = 2;
int led = 9;
int val;
void setup(){
  pinMode(sound,INPUT);
  pinMode(led,OUTPUT);
  Serial.begin(9600);
}
void loop(){
  val = analogRead(sound);
  Serial.println(val);
  if (val>=70){
    digitalWrite(led,HIGH);
    delay(3000);
    digitalWrite(led,LOW);
  }
  delay(1000);
//  val=analogRead(flame);
//  Serial.println(val);
//  analogWrite(led,val/4);
//  delay(10);
}

