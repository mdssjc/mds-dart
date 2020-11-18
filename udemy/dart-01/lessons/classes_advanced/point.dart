class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);

  @override
  String toString() => 'Point($x, $y)';

  @override
  bool operator ==(covariant Point other) {
    return x == other.x && y == other.y;
  }
}

void main() {
  print(Point(1, 1));
  const list = [Point(1, 2), Point(3, 4)];
  print(list);

  print(Point(0, 0) == Point(0, 0));
  print(Point(0, 0) == Point(1, 0));
}
