// --- Directions
// Given a string, return true if the string is a palindrome
// or false if it is not.  Palindromes are strings that
// form the same word if it is reversed. *Do* include spaces
// and punctuation in determining if the string is a palindrome.
// --- Examples:
//   palindrome("abba") === true
//   palindrome("abcdefg") === false

void main() {
  palindrome('abba');
}

// Solution 1
bool palindrome3(String str) {
  final String reversedStr =
      str.split('').reduce((current, next) => next + current);
  return str == reversedStr;
}

// Solution 2
bool palindrome(String str) {
  bool isPalindrome;
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
