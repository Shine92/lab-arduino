int potpin=0;
int ledpin=3;
int val=0;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(ledpin, INPUT);
  pinMode(4, INPUT);
  pinMode(5, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  val=analogRead(potpin);
  Serial.println(val);
  analogWrite(ledpin,val/4);
  analogWrite(4,val/4);
  analogWrite(5,val/4);
  delay(10);
  
}
