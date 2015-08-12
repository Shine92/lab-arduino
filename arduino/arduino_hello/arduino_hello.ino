float f=10;
float *p=&f;
int incomingByte=0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  Serial.println("Hello World!!");
  float rand = random(50);

  f = rand;
  Serial.println(*p);
//  Serial.println(rand);


}

void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available()>0){
    incomingByte = Serial.read();

    Serial.print("Receive byte: ");
    Serial.println(incomingByte);
  }
}
