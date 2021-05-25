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

  @override
  Point operator +(covariant Point add) {
    return Point(x + add.x, y + add.y);
  }

  @override
  Point operator *(covariant int multiply) {
    return Point(x * multiply, y * multiply);
  }
}

void main() {
  // make this compile by overriding the + operator
  print(Point(1, 1) + Point(2, 0)); // should print: Point(3, 1)
  // make this compile by overriding the * operator
  print(Point(2, 1) * 5); // should print: Point(10, 5)
  print(Point(2, 1) * 5);
}
