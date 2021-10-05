import 'dart:io';
void main(){
  List<int> input = [];

  stdin.readLineSync()!.split(' ').forEach((element) {
    input.add(int.parse(element));
  });

  int x = int.parse(stdin.readLineSync()!);
  int index = input.indexOf(x);
  if(index == -1)
    print("NO");
  else
    print(index+1);

}