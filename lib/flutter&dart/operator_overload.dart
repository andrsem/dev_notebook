import 'package:equatable/equatable.dart';

class Point extends Equatable {
  const Point(this.x, this.y);
  final int x;
  final int y;

  @override
  Point operator +(covariant Point add) {
    return Point(x + add.x, y + add.y);
  }

  @override
  Point operator *(covariant int multiply) {
    return Point(x * multiply, y * multiply);
  }

  @override
  List<Object> get props => [x, y];
  @override
  bool get stringify => true;
}

void main() {
  // make this compile by overriding the + operator
  print(Point(1, 1) == Point(1, 1)); // should print: Point(3, 1)
  // make this compile by overriding the * operator
  print(Point(2, 1) * 5); // should print: Point(10, 5)
  print(Point(2, 1) * 5);
  print(Point(1, 2));
}
