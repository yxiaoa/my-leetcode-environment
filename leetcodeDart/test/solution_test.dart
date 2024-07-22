import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/solution.dart';

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
  test("test gcdOfStrings", () {
    var input0 = ["ABCABC", "ABABAB", "LEET"];
    var input1 = ["ABC", "ABAB", "CODE"];
    var expected = ["ABC", "AB", ""];

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.gcdOfStrings(input0[i], input1[i]);
      expect(output, expected[i]);
    }
  });
  test("test minimumOperations", () {
    var input0 = [
      [1, 2, 3, 4],
      [3, 6, 9]
    ];
    var expected = [3, 0];

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.minimumOperations(input0[i]);
      expect(output, expected[i]);
    }
  });
  test("test leftRightDifference", () {
    var input0 = [
      [10, 4, 8, 3],
      [1]
    ];
    var expected = [
      [15, 1, 11, 22],
      [0]
    ];

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.leftRightDifference(input0[i]);
      expect(output, expected[i]);
    }
  });
  test("test strStr", () {
    var input0 = ["sadbutsad", "leetcode"];
    var input1 = ["sad", "leeto"];
    var expected = [0, -1];

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.strStr(input0[i], input1[i]);
      expect(output, expected[i]);
    }
  });
  test("test countTestedDevices", () {
    var input0 = [
      [1, 1, 2, 1, 3],
      [0, 1, 2]
    ];
    var expected = [3, 2];

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.countTestedDevices(input0[i]);
      expect(output, expected[i]);
    }
  });
}
