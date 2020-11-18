class Point {
  const Point(this.x, this.y);

  final int x;
  final int y;

  @override
  String toString() => 'Point($x, $y)';

  @override
  bool operator ==(covariant Point other) {
    return x == other.x && y == other.y;
  }

  Point operator +(Point other) {
    return Point(x + other.x, y + other.y);
  }

  Point operator *(int factor) {
    return Point(x * factor, y * factor);
  }
}

void main() {
  print(Point(1, 1) + Point(2, 0));
  print(Point(2, 1) * 5);
}
