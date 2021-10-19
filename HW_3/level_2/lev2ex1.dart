//Если хотите протестировать эту функцию, поменяйте ее имя на другое
String OUTPUT = "";


void main()
{
bool flag = true;
  var input = ["2 40", "11 23", "5 67", "2 4", "1 0"];
  var output = ["1099511627776",
    "895430243255237372246531",
    "67762635780344027125465800054371356964111328125",
    "16","1"];
  {
    void print(Object obj) {
      OUTPUT = obj.toString();
    }
    //----------------------------------------------------




    void main(String inputString) {
      List<int> input = [];
      inputString.split(' ').forEach((element) {
        input.add(int.parse(element));
      });

      BigInt binPow(BigInt a, int n) {
        if (n == 0) {
          return BigInt.one;
        }
        if (n % 2 == 1) {
          return binPow(a, n - 1) * a;
        } else {
          BigInt b = binPow(a, n ~/ 2);
          return b * b;
        }
      }

      print(binPow(BigInt.from(input[0]), input[1]));
    }



    //---------------------------------------------------
    for (int i = 0; i < input.length; i++) {
      main(input[i]);
      if (OUTPUT != output[i]) {
          flag = false;
      }
    }
  }
  if (flag)
    print("OK");
  else
    print("BAD");
}
