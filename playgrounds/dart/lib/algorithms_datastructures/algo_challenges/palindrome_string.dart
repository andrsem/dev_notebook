import 'package:test/test.dart';

bool isPalindromeFirstSolution(String str) {
  final String reversedStr =
      str.split('').reduce((current, next) => next + current);
  return str == reversedStr;
}

bool isPalindromeSecondSolution(String str) {
  bool isPalindrome = false;
  for (var i = 0; i < str.length; i++) {
    final lastChar = str[str.length - 1 - i];
    final char = str[i];

    if (lastChar != char) {
      isPalindrome = false;
      break;
    } else {
      isPalindrome = true;
    }
  }
  return isPalindrome;
}

void main() {
  const palindroms = ['aba', '1000000001', 'pennep', 'a'];
  const notPalindroms = [' aba', 'aba ', 'greetings', 'Fish hsif'];

  for (final element in palindroms) {
    test('"$element" is a palindrome', () {
      expect(isPalindromeFirstSolution(element), true);
      expect(isPalindromeSecondSolution(element), true);
    });
  }

  for (final element in notPalindroms) {
    test('"$element" is not a palindrome', () {
      expect(isPalindromeFirstSolution(element), false);
      expect(isPalindromeSecondSolution(element), false);
    });
  }
}
