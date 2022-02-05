import 'package:equatable/equatable.dart';

// more about operator overloading. https://freecontent.manning.com/wp-content/uploads/operator-overloading.pdf

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
  print(const Point(1, 1) + const Point(2, 0));
  // make this compile by overriding the * operator
  print(const Point(2, 1) * 5);
}
