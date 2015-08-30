#include <stdio.h>
#define CAM_ADDR       0
const int cameraAddr = (CAM_ADDR >> 5);  // addr

int main(void) {

  printf("<!-- hello.c -->\n");
  printf("hello %d!\n",cameraAddr);
 }