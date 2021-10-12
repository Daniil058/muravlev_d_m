import 'dart:io';

import 'dart:math';

double segmentLenght(int x1, int y1, int x2, int y2){
  double len = 0;
  len = sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2));
  return len;
}

double trianglePerimetr(int x1, int y1, int x2, int y2, int x3, int y3){
  double perimetr = 0;
  perimetr += segmentLenght(x1, y1, x2, y2);
  perimetr += segmentLenght(x2, y2, x3, y3);
  perimetr += segmentLenght(x1, y1, x3, y3);
  return perimetr;
}


void main(){
  List<int> list = [];
  stdin.readLineSync()!.split(' ').forEach((element) {
    list.add(int.parse(element));
  });
  print(trianglePerimetr(list[0], list[1], list[2], list[3], list[4], list[5]));
}

