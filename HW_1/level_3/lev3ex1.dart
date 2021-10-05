import 'dart:io';
void main(){
  List<int> input = [];
  stdin.readLineSync()!.split(' ').forEach((element) {
    input.add(int.parse(element));
  });
  int N = input[0];
  int A = input[1];
  int B = input[2];
  int C = input[3];
  int D = input[4];
  List<int> numbers = [];

  for (int i = 1; i <= N; i++)
    numbers.add(i);

  for(int i = A-1 ; i < B  ; i++){
      numbers[i] = B + A - 1 - i;
  }

  for(int i = C-1 ; i < (D+C-1)/2  ; i++){
    int tmp = numbers[D - 2 - i + C ];
    numbers[D-2 - i + C ] = numbers[i];
    numbers[i] = tmp;
  }

  String output = "";
  for(int num in numbers)
    output+= num.toString()+" ";
  print(output);
}