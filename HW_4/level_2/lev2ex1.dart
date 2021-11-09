class Person{
  int _age = 0;
  String _name = "";

  Person(this._name, this._age);

  setAge(int age) => this._age=age;
  setName(String name) => this._name=name;

  String toString() {
    return "($_name, $_age)";
  }
}

void main(){
  Person p = Person("Test", 3);
  print(p);
  p.setAge(5);
  p.setName("Vasya");
  print(p);
}