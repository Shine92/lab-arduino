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
int parse_str(char str[]){
  char token;
  int sum=0,length,i;
  int weight[8]={8,7,6,5,4,3,2};
  length=strlen(str);
  for(i=0;i<length-1;i++){
    //sum
    token = str[i];
    sum+=(token-'0')*weight[i];
  }
  printf("%d\n",sum );
  if((sum%10)==(str[length-1]-'0')) {
    return 1;
  } else {
    return 0;
  }
}
int parse_int(int arr){
  int sum=0,remainder,i;
  int weight[8]={2,3,4,5,6,7,8};
  remainder=arr%10;
  arr/=10;
  for(i=0;i<7;i++){
    //sum
    sum+=(arr%10)*weight[i];
    arr/=10;
  }
  printf("%d\n",sum );
  if((sum%10)==remainder) {
    return 1;
  } else {
    return 0;
  }
}
