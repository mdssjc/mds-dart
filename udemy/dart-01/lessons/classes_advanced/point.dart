class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);

  @override
  String toString() => 'Point($x, $y)';
}

void main() {
  print(Point(1, 1));
  const list = [Point(1, 2), Point(3, 4)];
  print(list);
}
