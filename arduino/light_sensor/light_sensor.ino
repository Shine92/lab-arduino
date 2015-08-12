int ledpin = 6;
int R_guangming = 5;
int val;
void setup(){
  pinMode(ledpin,OUTPUT);
  Serial.begin(9600);
}
void loop(){
  val=analogRead(R_guangming);
  Serial.println(val);
  analogWrite(ledpin,val/4);
  delay(10);
}

