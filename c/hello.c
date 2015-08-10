#include <stdio.h>
#include "structTypedef.c"
#define MAX 100
#define DEFINE_PI 3.1415926
int main(void) {

  printf("<!-- hello.c -->\n");
  char name[MAX] = "henry";
  printf("hello %s!\n",name);

  printf("\n<!-- declare4Types.c -->\n");
  char c='A';
  int i = 1;
  float f = 12.0;
  double d = 12.12;
  printf("%c, %d, %f, %f\n",c,i,f,d);

  printf("\n<!-- circle.c -->\n");
  const float PI = 3.14159;
  int radius = 10;
  float area = PI * radius * radius;
  float circumference = 2 * PI * radius;
  printf("%f, %f\n", area, circumference );

  printf("\n<!-- operators.c -->\n");
  int a=17,b=5;
  printf("%d  %d  %d  %d\n", a+b, a-b, a*b, a/b);

  printf("\n<!-- inputName.c -->\n");
  // char myName[MAX];
  // int myAge;
  // scanf("%s",myName);
  // scanf("%d",&myAge);
  // printf("%s is %d years old.\n", myName, myAge );

  printf("\n<!-- circle2.c -->\n");
  // scanf("%d", &radius);
  // printf("%f, %f\n", PI * radius * radius, 2 * PI * radius );

  printf("\n<!-- evenNum.c -->\n");
  // int num[5];
  // scanf("%d %d %d %d %d",&num[0],&num[1],&num[2],&num[3],&num[4]);
  // printf("even number: %d-%d-%d\n",num[0],num[2],num[4]);

  printf("\n<!-- string.c -->\n");
  // char line1[MAX];
  // char line2[MAX];
  // char line3[MAX];
  // scanf("%s",line1);
  // scanf("%s",line2);
  // scanf("%s",line3);
  // printf("%s\n%s\n%s\n", line1,line2,line3);

  printf("\n<!-- charOfString.c -->\n");
  // char charOfString[5];
  // scanf("%s", charOfString);
  // for (int i=0;i<5;i++){
  //   printf("%c-->", charOfString[i] );
  // }
  // printf("\n");

  printf("\n<!-- sumOfArray.c -->\n");
  // int sumOfArray[2][3] = {{1,2,3},{4,5,6}};
  //
  // int result;
  // for(int i=0;i<2;i++){
  //   result=0;
  //   for(int j=0;j<3;j++){
  //     result+=sumOfArray[i][j];
  //   }
  //   printf("%d\n", result);
  // }
  // int col[3]={0,0,0};
  // for(int i=0;i<2;i++){
  //   for(int j=0;j<3;j++){
  //     col[j]+=sumOfArray[i][j];
  //   }
  // }
  // printf("%d %d %d\n",col[0],col[1],col[2]);

  printf("\n<!-- structScanf.c -->\n");
  // struct person{
  //   char name[10];
  //   int age;
  //   float salary;
  // };
  // struct person teacher;
  // scanf("%s",teacher.name);
  // scanf("%d", &teacher.age);
  // scanf("%f", &teacher.salary);
  // printf("%s is %d years old. %f\n", teacher.name, teacher.age, teacher.salary);

  printf("\n<!-- unionScanf.c -->\n");
  // union money{
  //   int student;
  //   double teacher;
  // };
  //
  // union money henry;
  // scanf("%d", &henry.student);
  // scanf("%lf", &henry.teacher);
  // printf("%d\n", henry.student);
  // printf("%10.2lf\n", henry.teacher);

  printf("\n<!-- enumShow.c -->\n");
  enum color {
    white=100,
    red,
    blue,
    green,
    black
  };
  enum color ball;
  ball=white;
  printf("white: %d\n",ball);
  ball=green;
  printf("green: %d\n",ball);

  printf("\n<!-- structTypedefInput.c -->\n");
  // typedef struct {
  //     char name[10];
  //     int age;
  //     float salary;
  // } Person;
  Person teacher;
  scanf("%s",teacher.name);
  scanf("%d", &teacher.age);
  scanf("%f", &teacher.salary);
  printf("%s is %d years old. %f\n", teacher.name, teacher.age, teacher.salary);

  printf("\n<!-- defineCircle.c -->\n");
  // scanf("%d", &radius);
  // printf("%f, %f\n", DEFINE_PI * radius * radius, 2 * DEFINE_PI * radius );

  printf("\n<!-- defineTypedef.c -->\n");
  printf("please see structTypedefInput.c\n", );



}
