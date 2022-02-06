import 'package:test/test.dart';

String reverse1(String str) {
  final list = <String>[];
  for (var i = 0; i < str.length; i++) {
    list.add(str[i]);
  }
  return list.reversed.join();
}

String reverse2(String str) => str.split('').reversed.join();

String reverse3(String str) {
  String reversedString = '';
  for (var i = 0; i < str.length; i++) {
    reversedString = str[i] + reversedString;
  }
  return reversedString;
}

String reverse4(String str) => str.split('').reduce((rev, char) => char + rev);

void main() {
  test('String "abcd" reverses a string "dcba"', () {
    expect(reverse1('abcd'), 'dcba');
    expect(reverse2('abcd'), 'dcba');
    expect(reverse3('abcd'), 'dcba');
    expect(reverse4('abcd'), 'dcba');
  });

  test('String "  abcd" reverses a string "dcba  "', () {
    expect(reverse1('  abcd'), 'dcba  ');
    expect(reverse2('  abcd'), 'dcba  ');
    expect(reverse3('  abcd'), 'dcba  ');
    expect(reverse4('  abcd'), 'dcba  ');
  });
}
