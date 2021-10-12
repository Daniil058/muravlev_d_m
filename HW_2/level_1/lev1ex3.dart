import 'dart:io';

String SearchCoupleOfChar(String line){
  Set set = new Set();
  for (int i =0; i < line.length; i++){
    if(!set.contains(line[i]))
        set.add(line[i]);
    else
      return line[i];
  }
  return 'Don`t found';
}

void main(){
  String str = stdin.readLineSync()!;
  print(SearchCoupleOfChar(str));
}

