import 'package:dev_notebook/programming_fundamentals/algorithms_datastructures/algo_challenges/palindrome_string.dart';
import 'package:test/test.dart';

void main() {
  test('"aba" is a palindrome', () {
    expect(palindrome('aba'), true);
  });

  test('" aba" is not a palindrome', () {
    expect(palindrome(' aba'), false);
  });

  test('"aba " is not a palindrome', () {
    expect(palindrome('aba '), false);
  });

  test('"greetings" is not a palindrome', () {
    expect(palindrome('greetings'), false);
  });

  test('"1000000001" a palindrome', () {
    expect(palindrome('1000000001'), true);
  });

  test('"Fish hsif" is not a palindrome', () {
    expect(palindrome('Fish hsif'), false);
  });

  test('"pennep" a palindrome', () {
    expect(palindrome('pennep'), true);
  });
}
