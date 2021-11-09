class Collections {
  static int time = 0;
  static int sum(List<int> list){
    time++;
    int ans = 0;
    for (int element in list)
      ans+=element;
    return ans;
  }
}

void main(){
  print(Collections.time); //0
  print(Collections.sum([1, 2, 3, 5])); //11
  print(Collections.time); //1
  print(Collections.sum([6, 2, 5])); //13
  print(Collections.time); //2
}