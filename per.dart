class Person {
  late String _firstName;
  late String _lastName;
  late int _age;

  //parameterized
  // Person({required this.firstName, required this.lastName, required this.age});
  // Person(this.firstName, this.lastName, this.age);

  // Person.another(String fn, String ln, int a, int b) {
  //   this.firstName = fn;
  //   this.lastName = ln;
  //   this.age = a;
  //   print(b);
  // }

  //default
  // Person(String firstName, String lastName, int age) {
  //   this.firstName = firstName;
  //   this.lastName = lastName;
  //   this.age = age;
  // }

  // int get age {
  //   return _age ?? 0;
  // }

  int get age => _age ?? 0;

  // set age(int a) => this._age = a;

  set age(int a) {
    this._age = a;
    if (a < 0) {
      print('cannot accept negative number');
      this._age = 0;
    }
  }

  void display() {
    print('Details: $_firstName $_lastName $_age');
  }
}
