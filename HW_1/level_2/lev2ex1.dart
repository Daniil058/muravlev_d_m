import 'dart:io';
void main(){
  Map<String,int> countOfNumber = new Map();

  stdin.readLineSync()!.split(' ').forEach((element) {
    if (!countOfNumber.containsKey(element))
      countOfNumber[element] = 1;
    else
      countOfNumber[element] = countOfNumber[element]! + 1;
  });
  String? maxKey;
  for(String key in countOfNumber.keys){
    if(maxKey == null){
      maxKey = key;
    }else{
      if(countOfNumber[key]! > countOfNumber[maxKey]!)
        maxKey = key;
    }
  }
  print(maxKey!);
}