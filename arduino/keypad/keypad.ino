//设置阴极接口
int a = 1;
int b = 2;
int c = 3;
int d = 4;
int e = 5;
int f = 6;
int g = 7;
int p = 8;
//设置阳极接口
int d4 = 9;
int d3 = 10;
int d2 = 11;
int d1 = 12;
//设置变量
long n = 1;
int x = 100;
int del = 55;  //此处数值对时钟进行微调
 
byte segs[7] = { a, b, c, d, e, f, g };
 
byte seven_seg_digits[10][7] = { { 1,1,1,1,1,1,0 },  // = 0
                                 { 0,1,1,0,0,0,0 },  // = 1
                                 { 1,1,0,1,1,0,1 },  // = 2
                                 { 1,1,1,0,0,0,1 },  // = 3
                                 { 0,1,1,0,0,1,1 },  // = 4
                                 { 1,0,1,1,0,1,1 },  // = 5
                                 { 1,0,1,1,1,1,1 },  // = 6
                                 { 1,1,1,0,0,0,0 },  // = 7
                                 { 1,1,1,1,1,1,1 },  // = 8
                                 { 1,1,1,1,0,1,1 }   // = 9
                             }; 
 
void setup()
{
  pinMode(d1, OUTPUT);
  pinMode(d2, OUTPUT);
  pinMode(d3, OUTPUT);
  pinMode(d4, OUTPUT);
  pinMode(a, OUTPUT);
  pinMode(b, OUTPUT);
  pinMode(c, OUTPUT);
  pinMode(d, OUTPUT);
  pinMode(e, OUTPUT);
  pinMode(f, OUTPUT);
  pinMode(g, OUTPUT);
  pinMode(p, OUTPUT);
}
 
void loop()
{
  clearLEDs();
  pickDigit(1);
  lightSegments((n/x/1000)%10);
  delayMicroseconds(del);
 
  clearLEDs();
  pickDigit(2);
  lightSegments((n/x/100)%10);
  delayMicroseconds(del);
 
  clearLEDs();
  pickDigit(3);
  dispDec(3);
  lightSegments((n/x/10)%10);
  delayMicroseconds(del);
 
  clearLEDs();
  pickDigit(4);
  lightSegments(n/x%10);
  delayMicroseconds(del);
 
  n++;
 
  if (digitalRead(13) == HIGH)
  {
    n = 0;
  }
}
 
void pickDigit(int x)  //定义pickDigit(x),其作用是开启dx端口
{
  digitalWrite(d1, HIGH);
  digitalWrite(d2, HIGH);
  digitalWrite(d3, HIGH);
  digitalWrite(d4, HIGH);
 
  switch(x)
  {
  case 1: 
    digitalWrite(d1, LOW); 
    break;
  case 2: 
    digitalWrite(d2, LOW); 
    break;
  case 3: 
    digitalWrite(d3, LOW); 
    break;
  default: 
    digitalWrite(d4, LOW); 
    break;
  }
}
 
void dispDec(int x)  //设定开启小数点
{
  digitalWrite(p, HIGH);
}
 
void clearLEDs()  //清屏
{
  digitalWrite(a, LOW);
  digitalWrite(b, LOW);
  digitalWrite(c, LOW);
  digitalWrite(d, LOW);
  digitalWrite(e, LOW);
  digitalWrite(f, LOW);
  digitalWrite(g, LOW);
  digitalWrite(p, LOW);
}
 
 
// 点亮对应数字的数码管
void lightSegments(int x) {
  for (int i = 0; i < 7; i++) {
    digitalWrite(segs[i], seven_seg_digits[x][i]);
  }
}

