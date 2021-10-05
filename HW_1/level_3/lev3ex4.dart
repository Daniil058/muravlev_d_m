import 'dart:io';
void main(){
  String maxWord = "";
  int maxLenght = 0;
  stdin.readLineSync()!.trim().split(' ').forEach((element) {
    if (element.length > maxLenght)
      {
      maxWord = element;
      maxLenght = element.length;
      }
  });

  print(maxWord);
  print(maxLenght);
}