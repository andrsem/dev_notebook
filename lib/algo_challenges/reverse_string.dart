// --- Directions
// Given a string, return a new string with the reversed
// order of characters
// --- Examples
//   reverse('apple') === 'leppa'
//   reverse('world') === 'dlrow'

void main() {
  reverse('world');
}

String reverse(String str) {
  final list = <String>[];
  String newString;
  for (var i = 0; i < str.length; i++) {
    list.add(str[i]);
  }
  newString = list.reversed.join();
  print(newString);
  return newString;
}
