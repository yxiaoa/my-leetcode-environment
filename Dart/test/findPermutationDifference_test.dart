import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/findPermutationDifference.dart';

void main() {
  test("test example 1", () {
    var input0 = "abc";
    var input1 = "bac";
    var expected = 2;

    final sln = Solution();
    var output = sln.findPermutationDifference(input0, input1);
    expect(output, expected);
  });
  test("test example 2", () {
    var input0 = "abcde";
    var input1 = "edbac";
    var expected = 12;

    final sln = Solution();
    var output = sln.findPermutationDifference(input0, input1);
    expect(output, expected);
  });
}
