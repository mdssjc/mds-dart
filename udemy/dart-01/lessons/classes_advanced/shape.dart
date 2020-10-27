import 'dart:math';

abstract class Shape {
  double get area;
}

class Square extends Shape {
  final double side;

  Square(this.side);

  @override
  double get area => side * side;
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double get area => pi * radius * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main() {
  // final shape = Shape();
  final Shape square = Square(10);
  printArea(square);
  final Shape circle = Circle(5);
  printArea(circle);
  final shapes = [
    Square(2),
    Circle(3),
  ];
  shapes.forEach(printArea);
}
