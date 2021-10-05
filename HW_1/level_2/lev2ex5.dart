import 'dart:io';
void main(){
  int n = int.parse(stdin.readLineSync()!);
  String row = "";
  int x = 4;
  for(int i = 0; i < n; i++){
    row+=(x+3*i).toString()+" ";
  }
  print(row);
}