// --- Directions
// Given an integer, return true if the integer is a palindrome
// or false if it is not.
// --- Examples
//   palindrome(1221) === true
//   palindrome(3452) === false

// Solution 1
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
