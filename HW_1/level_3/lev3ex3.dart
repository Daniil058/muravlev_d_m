import 'dart:io';
void main(){

  String number = stdin.readLineSync()!.trim();
  var set = Set();
  for (int i = 0; i < number.length; i++){
    set.add(number[i]);
  }
  if(set.length != number.length)
    print("YES");
  else
    print("NO");
}