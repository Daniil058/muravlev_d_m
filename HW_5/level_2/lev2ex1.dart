class A{
  static int _a = 0;
  static set a(int val){
    print("Hello World!");
    _a = val;
  }
}

void main(){
  A.a = 0;
}