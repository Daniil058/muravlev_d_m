import 'dart:io';

int SumOfDigit(int n){
  int sum =0;
  while(n>0){
    sum+=n%10;
    n = n ~/ 10;
  }
  return sum;
}

void main(){
  int a = int.parse(stdin.readLineSync()!);
  print(SumOfDigit(a));
}

