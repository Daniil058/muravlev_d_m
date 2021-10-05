import 'dart:io';
void main(){
  int sum = 0;
  bool flag = false;
  int count = 0;
  stdin.readLineSync()!.split(' ').forEach((element) {
    int x = int.parse(element);
    if(x%2!=0){
      sum+=x;
      flag = true;
      count++;
    }
  });
  print((flag)?(sum/count).toStringAsFixed(2):"NO");
}