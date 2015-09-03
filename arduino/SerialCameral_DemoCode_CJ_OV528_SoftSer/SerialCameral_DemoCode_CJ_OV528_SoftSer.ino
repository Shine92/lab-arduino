//  File SerialCamera_DemoCode_CJ-OV528.ino
//  8/8/2013 Jack Shao
//  Demo code for using seeeduino or Arduino board to cature jpg format
//  picture from seeed serial camera and save it into sd card. Push the
//  button to take the a picture .

//  For more details about the product please check http://www.seeedstudio.com/depot/

#include <arduino.h>
//#include <SD.h>
#include <SoftwareSerial.h>

#define PIC_PKT_LEN    128        //data length of each read, dont set this too big because ram is limited
#define PIC_FMT_VGA    7
#define PIC_FMT_CIF    5
#define PIC_FMT_OCIF   3
#define CAM_ADDR       0
#define CAM_SERIAL     softSerial

#define PIC_FMT        PIC_FMT_VGA

//File myFile;
SoftwareSerial softSerial(2, 3);  //rx,tx (11-13 is used by sd shield)

const byte cameraAddr = (CAM_ADDR << 5);  // addr
const int buttonPin = A5;                 // the number of the pushbutton pin
unsigned long picTotalLen = 0;            // picture length
int picNameNum = 0;

/*********************************************************************/
void setup()
{
  Serial.begin(115200);
  CAM_SERIAL.begin(9600);       //cant be faster than 9600, maybe difference with diff board.
  pinMode(buttonPin, INPUT);    // initialize the pushbutton pin as an input
  //Serial.println("Initializing SD card....");
  pinMode(4,OUTPUT);          // CS pin of SD Card Shield
  
//  if (!SD.begin(4)) {
//    //Serial.print("sd init failed");
//    //return;
//  }
  //Serial.println("sd init done.");
  initialize();
}
/*********************************************************************/
void loop()
{
  int n = 0;
  while(1){
    //Serial.println("\r\nPress the button to take a picture");
    while (digitalRead(buttonPin) == LOW);      //wait for buttonPin status to HIGH
    //Serial.println("taking");
    if(digitalRead(buttonPin) == HIGH){
      delay(20);                               //Debounce
      if (digitalRead(buttonPin) == HIGH)
      {
        delay(200);
        if (n == 0) preCapture();
        Capture();
        //Serial.print("Saving picture...");
        GetData();
      }
      //Serial.print("\r\nDone ,number : ");
      //Serial.println(n);
      n++ ;
      }
    }
}
/*********************************************************************/
  // 將rx過來的資料清空
void clearRxBuf()
{
  while (CAM_SERIAL.available()) 
  {
    CAM_SERIAL.read(); 
  }
}
/*********************************************************************/
void sendCmd(char cmd[], int cmd_len)
{
  for (char i = 0; i < cmd_len; i++) CAM_SERIAL.write(cmd[i]); 
}
/*********************************************************************/
int readBytes(char *dest, int len, unsigned int timeout)
{
  int read_len = 0;
  unsigned long t = millis();
  while (read_len < len)
  {
    while (CAM_SERIAL.available()<1)
    {
      if ((millis() - t) > timeout)
      {
        return read_len;
      }
    }
    *(dest+read_len) = CAM_SERIAL.read();
    Serial.write(*(dest+read_len));
    read_len++;
  }
  return read_len;
}
/*********************************************************************/
  // arduino给摄像机上电后,arduino连续发送同步请求(AA 0D 00 00 00 00),直到摄像机应 答(AA 0E 0D XX 00 00)。通常arduino发送 5 次以内,摄像机会成功应答。  
  // 1.cmd  aa 0d 00 00 00 00 同步請求
  // 2.resp aa 0e 0d xx 00 00 回應1
  // 3.resp aa 0d 00 00 00 00 回應2
  // 4.cmd  aa 0e 0d 00 00 00 同步確認
void initialize()
{ 
  char cmd[] = {0xaa,0x0d|cameraAddr,0x00,0x00,0x00,0x00} ;
  unsigned char resp[6];

  Serial.print("initializing camera...");
  
  while (1) 
  {
    // 1.cmd
    sendCmd(cmd,6);
    // 2.resp
    if (readBytes((char *)resp, 6,1000) != 6)
    {
      Serial.print(".");
      continue;
    }
    if (resp[0] == 0xaa && resp[1] == (0x0e | cameraAddr) && resp[2] == 0x0d && resp[4] == 0 && resp[5] == 0) 
    {
      // 3.resp
      if (readBytes((char *)resp, 6, 500) != 6) continue; 
      if (resp[0] == 0xaa && resp[1] == (0x0d | cameraAddr) && resp[2] == 0 && resp[3] == 0 && resp[4] == 0 && resp[5] == 0) break; 
    }
  }  
  cmd[1] = 0x0e | cameraAddr;
  cmd[2] = 0x0d;
  // 4.cmd
  sendCmd(cmd, 6); 
  Serial.println("\nCamera initialization done.");
}
/*********************************************************************/
  // 拍照前初始化
  // 1. cmd  aa 01 00 07 xx 07 JPEG預覽，VGA格式
  // 2. resp aa 0e 01 xx 00 00 回應ok
void preCapture()
{
  char cmd[] = { 0xaa, 0x01 | cameraAddr, 0x00, 0x07, 0x00, PIC_FMT };  
  unsigned char resp[6]; 
  
  while (1)
  {
    clearRxBuf();
    // 1.
    sendCmd(cmd, 6);
    // 2.
    if (readBytes((char *)resp, 6, 100) != 6) continue; 
    if (resp[0] == 0xaa && resp[1] == (0x0e | cameraAddr) && resp[2] == 0x01 && resp[4] == 0 && resp[5] == 0) break; 
  }
}
/*********************************************************************/
  // 拍照
  // 1.1 cmd  aa 06 08 00 02 00 設定packet length
  // 1.2 resp aa 0e 06 xx 00 00 回應ok
  // 2.1 cmd  aa 05 00 00 00 00 快照 壓縮圖像
  // 2.2 resp aa 0e 05 xx 00 00 回應ok
  // 3.1 cmd  aa 04 01 00 00 00 獲取圖像 快照圖像
  // 3.2 resp aa 0e 04 xx 00 00 回應ok
  // 3.3 resp aa 0a 01 ~~ ~~ ~~ 數據傳送請求 快照圖像，回應packet size
void Capture()
{
  char cmd[] = { 0xaa, 0x06 | cameraAddr, 0x08, PIC_PKT_LEN & 0xff, (PIC_PKT_LEN>>8) & 0xff ,0}; 
  unsigned char resp[6];

  while (1)
  {
    clearRxBuf();
    // 1.1
    sendCmd(cmd, 6);
    // 1.2
    if (readBytes((char *)resp, 6, 100) != 6) continue;
    if (resp[0] == 0xaa && resp[1] == (0x0e | cameraAddr) && resp[2] == 0x06 && resp[4] == 0 && resp[5] == 0) break; 
  }
  cmd[1] = 0x05 | cameraAddr;
  cmd[2] = 0;
  cmd[3] = 0;
  cmd[4] = 0;
  cmd[5] = 0; 
  while (1)
  {
    clearRxBuf();
    // 2.1
    sendCmd(cmd, 6);
    // 2.2
    if (readBytes((char *)resp, 6, 100) != 6) continue;
    if (resp[0] == 0xaa && resp[1] == (0x0e | cameraAddr) && resp[2] == 0x05 && resp[4] == 0 && resp[5] == 0) break;
  }
  cmd[1] = 0x04 | cameraAddr;
  cmd[2] = 0x1;
  while (1) 
  {
    clearRxBuf();
    // 3.1
    sendCmd(cmd, 6);
    // 3.2
    if (readBytes((char *)resp, 6, 100) != 6) continue;
    if (resp[0] == 0xaa && resp[1] == (0x0e | cameraAddr) && resp[2] == 0x04 && resp[4] == 0 && resp[5] == 0)
    {
      // 3.3
      if (readBytes((char *)resp, 6, 1000) != 6)
      {
        continue;
      }
      if (resp[0] == 0xaa && resp[1] == (0x0a | cameraAddr) && resp[2] == 0x01)
      {
        picTotalLen = (resp[3]) | (resp[4] << 8) | (resp[5] << 16); 
        //Serial.print("picTotalLen:");
        //Serial.println(picTotalLen);
        break;
      }
    }
  }
  
}
/*********************************************************************/
  // 取得圖像數據
  // 1. cmd  aa 0e 0i 00 00 00 回應相機數據傳送的請求
  // 2. resp
  // (1..looping..2)
  // 3. cmd  aa 0e 00 00 F0 F0 結束
/*
size_t File::write(const uint8_t *buf, size_t size) {
  size_t t;
  if (!_file) {
    setWriteError();
    return 0;
  }
  _file->clearWriteError();
  t = _file->write(buf, size);
  if (_file->getWriteError()) {
    setWriteError();
    return 0;
  }
  return t;
}
*/
void GetData()
{
  unsigned int pktCnt = (picTotalLen) / (PIC_PKT_LEN - 6); 
  if ((picTotalLen % (PIC_PKT_LEN-6)) != 0) pktCnt += 1;
  
  char cmd[] = { 0xaa, 0x0e | cameraAddr, 0x00, 0x00, 0x00, 0x00 };  
  unsigned char pkt[PIC_PKT_LEN];
  
  char picName[] = "pic00.jpg";
  picName[3] = picNameNum/10 + '0';
  picName[4] = picNameNum%10 + '0';
  
//  if (SD.exists(picName))
//  {
//    SD.remove(picName);
//  }
  
//  myFile = SD.open(picName, FILE_WRITE); 
//  if(!myFile){
//    //Serial.println("myFile open fail...");
//  }
//  else{
    for (unsigned int i = 0; i < pktCnt; i++)
    {
      cmd[4] = i & 0xff;
      cmd[5] = (i >> 8) & 0xff;
      
      int retry_cnt = 0;
    retry:
      delay(10);
      clearRxBuf(); 
      // 1. 
      sendCmd(cmd, 6); 
      // 2.
      uint16_t cnt = readBytes((char *)pkt, PIC_PKT_LEN, 200);
      
      // 檢查封包是否完整
      // 校验码:错误校验码,低字节等于该包数据除去校验码的累加和,高字节等于 0。校验码低字节=累加(字节(0)~字节(N-2);校验码高字节=0。
      unsigned char sum = 0; 
      for (int y = 0; y < cnt - 2; y++)
      {
        sum += pkt[y];
      }
      if (sum != pkt[cnt-2])
      {
        if (++retry_cnt < 100) goto retry;
        else break;
      }
      
      // 寫檔，packet format如下:
      // [0][1] packet id
      // [2][3] 資料長度
      // [4]~[N-6] 資料
      // [N-2][N-1] 驗証碼
//      myFile.write((const uint8_t *)&pkt[4], cnt-6); 
      //if (cnt != PIC_PKT_LEN) break;
    }
    cmd[4] = 0xf0;
    cmd[5] = 0xf0; 
    // 3.
    sendCmd(cmd, 6); 
//  }
//  myFile.close();
  picNameNum ++;
}





