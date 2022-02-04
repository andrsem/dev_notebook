import 'package:test/test.dart';

bool isPalindromeInteger(int number) {
  int n = number;
  int rev = 0;
  bool isPalindrome;

  while (n != 0) {
    final remainder = n % 10;
    rev = rev * 10 + remainder;
    n ~/= 10;
  }
  if (number != rev) {
    isPalindrome = false;
  } else {
    isPalindrome = true;
  }

  return isPalindrome;
}

void main() {
  const palindroms = [12321, 1];
  const notPalindroms = [1232, 911];

  for (final number in palindroms) {
    test('$number is a palindrome', () {
      expect(isPalindromeInteger(number), true);
    });
  }

  for (final number in notPalindroms) {
    test('$number is not palindrome', () {
      expect(isPalindromeInteger(number), false);
    });
  }
}
