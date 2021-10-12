import 'dart:io';

String BinFactory(double x, int n){
  String result= '';
  while(n>0){
    x*=2;
    if(x>=1) {
      result+='1';
      x -= 1;
    }
    else
      result+='0';
    n--;
  }
  return result;
}

void main(){
  List<double> list = [];
  stdin.readLineSync()!.split(' ').forEach((element) {
    list.add(double.parse(element));
  });
  print(BinFactory(list[0], list[1].toInt()));
}