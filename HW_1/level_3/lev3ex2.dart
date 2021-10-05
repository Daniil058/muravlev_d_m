import 'dart:io';
void main(){
    String output = "";
    int index = 2;
    stdin.readLineSync()!.split(' ').forEach((element) {
      if(index%2==0)
        output+=element+" ";
      index++;
    });
    print(output);
  }