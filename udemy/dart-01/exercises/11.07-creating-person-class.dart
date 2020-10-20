class Person {
  final String name;
  final int age;
  final double height;

  Person({
    required this.name,
    required this.age,
    required this.height,
  });

  void printDescription() {
    print("My name is $name. I'm $age years old, I'm $height meters tall.");
  }
}

void main() {
  var person1 = Person(name: 'Andrea', age: 36, height: 1.84);
  var person2 = Person(name: 'Marcelo', age: 36, height: 1.73);

  person1.printDescription();
  person2.printDescription();
}
