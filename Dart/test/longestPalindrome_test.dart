import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/longestPalindrome.dart';

void main() {

  test("test longestPalindrome", () {
    var input0 = ["abccccdd", "a"];
    var expected = [7, 1];

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.longestPalindrome(input0[i]);
      expect(output, expected[i]);
    }
  });
}
