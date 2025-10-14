import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/isBalanced.dart';

void main() {
  test("test example 1", () {
    var input = "1234";
    var expected = false;

    final sln = Solution();
    var output = sln.isBalanced(input);
    expect(output, expected);
  });
  test("test example 2", () {
    var input = "24123";
    var expected = true;

    final sln = Solution();
    var output = sln.isBalanced(input);
    expect(output, expected);
  });
}
