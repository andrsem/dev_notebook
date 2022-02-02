import 'package:dev_notebook/algorithms_datastructures/algo_challenges/palindrome_integer.dart';
import 'package:test/test.dart';

void main() {
  test('12321 is a palindrome', () {
    expect(isPalindromeInteger(12321), true);
  });

  test('1 is a palindrome', () {
    expect(isPalindromeInteger(1), true);
  });

  test('1232 is a not palindrome', () {
    expect(isPalindromeInteger(1232), false);
  });
}
