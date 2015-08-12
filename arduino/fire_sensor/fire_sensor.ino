int flame = 5;
int led = 9;
int val;
void setup(){
  pinMode(flame,INPUT);
  pinMode(led,OUTPUT);
  Serial.begin(9600);
}
void loop(){
  val=analogRead(flame);
  Serial.println(val);
  analogWrite(led,val/4);
  delay(10);
}

