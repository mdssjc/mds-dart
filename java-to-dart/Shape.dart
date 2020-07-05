import 'dart:math';

abstract class Shape {
  num get area;

  factory Shape(String type) {
    if (type == 'circle') {
      return Circle(2);
    }
    if (type == 'square') {
      return Square(2);
    }
    throw 'Can\'t create $type.';
  }
}

Shape shapeFactory(String type) {
  if (type == 'circle') {
    return Circle(2);
  }
  if (type == 'square') {
    return Square(2);
  }
  throw 'Can\'t create $type';
}

class Circle implements Shape {
  final num radius;

  Circle(this.radius);

  @override
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;

  Square(this.side);

  @override
  num get area => pow(side, 2);
}

class Triangle implements Shape {
  final num side;

  Triangle(this.side);

  @override
  num get area => pow(side, 2) / 2;
}

class CircleMock implements Circle {
  @override
  num get area => 0;

  @override
  num get radius => 0;
}

void main() {
  try {
    print(Shape('circle').area);
    print(Shape('square').area);
    print(Shape('triangle').area);
  } catch (err) {
    print(err);
  }
}
