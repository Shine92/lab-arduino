typedef struct {
    char name[10];
    int age;
    float salary;
} Person;
int triangle1(void){
  for (int i=1;i<=5;i++){
    for (int j=1;j<=i;j++){
      printf("%d",i);
    }
    printf("\n");
  }
  return 1;
}
int triangle2(void){
  for (int i=1;i<=5;i++){
    for (int j=1;j<=5-i;j++){
      printf(" ");
    }
    for (int j=1;j<=i;j++){
      printf("%d",i);
    }
    printf("\n");
  }
  return 1;
}
int triangle3(void){
  for (int i=1;i<=5;i++){
    for (int j=1;j<=6-i;j++){
      printf("%d",i);
    }
    printf("\n");
  }
  return 1;
}
int triangle4(void){
  for (int i=1;i<=5;i++){
    for (int j=1;j<i;j++){
      printf(" ");
    }
    for (int j=1;j<=6-i;j++){
      printf("%d",i);
    }
    printf("\n");
  }
  return 1;
}
