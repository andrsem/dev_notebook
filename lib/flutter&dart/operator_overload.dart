import 'package:equatable/equatable.dart';

class Point extends Equatable {
  const Point(this.x, this.y);
  final int x;
  final int y;

  Point operator +(covariant Point add) {
    return Point(x + add.x, y + add.y);
  }

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
  print(const Point(1, 1) == const Point(1, 1)); // should print: Point(3, 1)
  // make this compile by overriding the * operator
  print(const Point(2, 1) * 5); // should print: Point(10, 5)
  print(const Point(2, 1) * 5);
  print(const Point(1, 2));
}
