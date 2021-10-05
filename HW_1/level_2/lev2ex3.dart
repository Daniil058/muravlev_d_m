import 'dart:io';
void main(){
  int sum = 0;
  bool flag = false;
  stdin.readLineSync()!.split(' ').forEach((element) {
    int x = int.parse(element);
    if(x%2==0){
      sum+=x;
      flag = true;
    }
  });
  print((flag)?sum:"NO");
}