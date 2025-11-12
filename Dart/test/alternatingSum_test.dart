import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/alternatingSum.dart';

void main() {
  test("test example 1", () {
    var input = [1, 3, 5, 7];
    var expected = -4;

    final sln = Solution();
    var output = sln.alternatingSum(input);
    expect(output, expected);
  });
  test("test example 2", () {
    var input = [100];
    var expected = 100;

    final sln = Solution();
    var output = sln.alternatingSum(input);
    expect(output, expected);
  });
}
