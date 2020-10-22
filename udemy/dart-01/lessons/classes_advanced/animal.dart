class Animal {
  final int age;

  Animal({required this.age});

  void sleep() => print('sleep');
}

class Dog extends Animal {
  Dog({required int age}) : super(age: age);

  void bark() => print('bark');
  @override
  void sleep() {
    super.sleep();
    print('sleep some more');
  }
}

class Cow extends Animal {
  Cow({required int age}) : super(age: age);

  void moo() => print('moo');
}

class CleverDog extends Dog {
  CleverDog({required int age}) : super(age: age);

  void catchBall() => print('catch');
}

void main() {
  final animal = Animal(age: 10);
  animal.sleep();

  final dog = Dog(age: 10);
  dog.bark();
  dog.sleep();

  final cow = Cow(age: 10);
  cow.moo();
  cow.sleep();

  final cleverDog = CleverDog(age: 10);
  cleverDog.catchBall();
}
