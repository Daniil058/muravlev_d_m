import 'dart:io';


String Uncoding(String str, int n){
  String result = "";
  for (int i = 0; i < str.length; i++){
    if(str.codeUnits[i] - n < 65)
      result += String.fromCharCode(26 + str.codeUnits[i] - n );
    else
      result += String.fromCharCode(str.codeUnits[i]-n);
  }
  return result;
}


void main(){
  String str = stdin.readLineSync()!;
  int a = int.parse(stdin.readLineSync()!);

  print(Uncoding(str, a));
}

