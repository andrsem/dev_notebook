void main() {
  final array = [20, 35, -15, 7, 55, 1, -22];
  for (var lastUnsortedIndex = array.length - 1;
      lastUnsortedIndex > 0;
      lastUnsortedIndex--) {
    int largest = 0;
    for (var i = 1; i <= lastUnsortedIndex; i++) {
      if (array[i] > array[largest]) {
        largest = i;
      }
    }
    swap(array, largest, lastUnsortedIndex);
  }
  print(array);
}

void swap(List<int> array, int i, int j) {
  if (i == j) {
    return;
  }
  final int temp = array[i];
  array[i] = array[j];
  array[j] = temp;
}
