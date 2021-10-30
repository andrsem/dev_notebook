void main() {
  final array = [20, 35, -15, 7, 55, 1, -22];
  for (var firstUnsortedIndex = 1;
      firstUnsortedIndex < array.length;
      firstUnsortedIndex++) {
    final newElement = array[firstUnsortedIndex];
    int i;
    for (i = firstUnsortedIndex; i > 0 && array[i - 1] > newElement; i--) {
      array[i] = array[i - 1];
    }
    array[i] = newElement;
  }

  print(array);
}
