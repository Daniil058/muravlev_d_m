import 'dart:io';

int SumOfDigit(int n){
  int sum =0;
  while(n>0){
    sum+=n%10;
    n = n ~/ 10;
  }
  return sum;
}

int SumOfThirteen(int n){
  int count =0;
  while (n>=0){
    if (SumOfDigit(n)%13==0)
      count++;
    n--;
  }
  return count;
}

void main(){
  int a = int.parse(stdin.readLineSync()!);
  print(SumOfThirteen(a));
}

