import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/leetcode.dart';

void main() {
  test("leet code test", () {
    var input0 = ["egcfe", "abcd", "seven"];
    var input1 = [10];
    var expected = ["efcfe", "abba", "neven"];

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.makeSmallestPalindrome(input0[i]);
      expect(output, expected[i]);
    }
  });
}
