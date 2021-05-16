List<T> where<T>(List<T> items, bool Function(T) f) {
  var result = <T>[];
  for (final item in items) {
    if (f(item)) {
      result.add(item);
    }
  }
  return result;
}

void main() {
  final li = [1, 2, 3, 4];
  final newLi = where<int>(li, (x) => x.isOdd);
  print(newLi);
}
