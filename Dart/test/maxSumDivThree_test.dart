import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/maxSumDivThree.dart';

void main() {
  test("test example 1", () {
    var input = [3, 6, 5, 1, 8];
    var expected = 18;

    final sln = Solution();
    var output = sln.maxSumDivThree(input);
    expect(output, expected);
  });
  test("test example 2", () {
    var input = [4];
    var expected = 0;

    final sln = Solution();
    var output = sln.maxSumDivThree(input);
    expect(output, expected);
  });
  test("test example 3", () {
    var input = [1, 2, 3, 4, 4];
    var expected = 12;

    final sln = Solution();
    var output = sln.maxSumDivThree(input);
    expect(output, expected);
  });
}
