import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/concatWithReverse.dart';

void main() {
  test("test example 1", () {
    var input = [1, 2, 3];
    var expected = [1, 2, 3, 3, 2, 1];

    final sln = Solution();
    var output = sln.concatWithReverse(input);
    expect(output, expected);
  });
  test("test example 2", () {
    var input = [1];
    var expected = [1, 1];

    final sln = Solution();
    var output = sln.concatWithReverse(input);
    expect(output, expected);
  });
}
