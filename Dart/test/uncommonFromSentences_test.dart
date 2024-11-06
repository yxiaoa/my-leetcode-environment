import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/uncommonFromSentences.dart';

void main() {
  test("test Example 1", () {
    var input0 = "this apple is sweet";
    var input1 = "this apple is sour";
    var expected = ["sweet", "sour"];

    final sln = Solution();
    var output = sln.uncommonFromSentences(input0, input1);
    expect(output, expected);
  });
  test("test Example 2", () {
    var input0 = "apple apple";
    var input1 = "banana";
    var expected = ["banana"];

    final sln = Solution();
    var output = sln.uncommonFromSentences(input0, input1);
    expect(output, expected);
  });
}
