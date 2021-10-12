import 'dart:io';

String WithoutSpace(String line){
  String result = "";
  for (int i = 0; i < line.length; i++){
    if(line[i] == ' ' && line[i+1] == ' ')
      continue;
    else
      result += line[i];
  }
  return result;
}

void main(){
  String string = stdin.readLineSync()!;
  print(WithoutSpace(string));
}

