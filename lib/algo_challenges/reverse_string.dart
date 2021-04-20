// --- Directions
// Given a string, return a new string with the reversed
// order of characters
// --- Examples
//   reverse('apple') === 'leppa'
//   reverse('world') === 'dlrow'

void main() {
  reverse('world');
}

// Solution 1
String reverse(String str) {
  final list = <String>[];
  for (var i = 0; i < str.length; i++) {
    list.add(str[i]);
  }
  return list.reversed.join();
}

// Solution 2
String reverse2(String str) => str.split('').reversed.join();
