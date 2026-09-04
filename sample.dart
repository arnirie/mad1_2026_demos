import 'dart:io';
import 'per.dart';

void main() {
  // Person p = Person('arni', 'tamayo', 35);
  // Person p = Person(firstName: 'arni', lastName: 'tamayo', age: 34);
  // var person = Person.another('ar', 'tam', 35, 36);
  //invoke/call a property or method
  // p.firstName = 'arni';
  // p.lastName = 'tamayo';
  // p.age = 35;
  // p.display();
  Person p = new Person();
  p.age = -10;
  p.display();
}
