class Stack<T> {
  final List<T> _items = [];
  void push(T item) => _items.add(item);
  T pop() => _items.removeLast();
}

void main() {
  final Stack<int> stack = Stack<int>()
    ..push(3)
    ..push(4)
    ..push(6);
  print(stack.pop());
}
