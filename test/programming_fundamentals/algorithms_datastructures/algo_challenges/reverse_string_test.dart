import 'package:dev_notebook/programming_fundamentals/algorithms_datastructures/algo_challenges/reverse_string.dart';
import 'package:test/test.dart';

void main() {
  test('Reverse reverses a string', () {
    expect(reverse('abcd'), 'dcba');
  });

  test('Reverse reverses a string', () {
    expect(reverse('  abcd'), 'dcba  ');
  });
}
