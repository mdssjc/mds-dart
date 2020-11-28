import 'package:equatable/equatable.dart';

class Point extends Equatable {
  final int x;
  final int y;

  const Point(this.x, this.y);

  @override
  List<Object> get props => [x, y];

  @override
  bool get stringify => true;

  Point operator +(Point other) {
    return Point(x + other.x, y + other.y);
  }

  Point operator *(int other) {
    return Point(x + other, y + other);
  }
}

void main() {
  print(Point(1, 1));
  const list = [Point(1, 2), Point(3, 4)];
  print(list);

  print(Point(0, 0) == Point(0, 0));
  print(Point(0, 0) == Point(1, 0));
}
