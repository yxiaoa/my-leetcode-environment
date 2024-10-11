import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/solution.dart';

void main() {
  test("test shortestToChar", () {
    var input0 = ["loveleetcode", "aaab", "a"];
    var input1 = ["e", "b", "a"];
    var expected = [
      [3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0],
      [3, 2, 1, 0],
      [0]
    ];

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.shortestToChar(input0[i], input1[i]);
      expect(output, expected[i]);
    }
  });
  test("test surfaceArea", () {
    var input0 = [
      [
        [1, 2],
        [3, 4]
      ],
      [
        [1, 1, 1],
        [1, 0, 1],
        [1, 1, 1]
      ],
      [
        [2]
      ],
      [
        [2, 2, 2],
        [2, 1, 2],
        [2, 2, 2]
      ]
    ];
    var expected = [34, 32, 10, 46];

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.surfaceArea(input0[i]);
      expect(output, expected[i]);
    }
  });
  test("test removeTrailingZeros", () {
    var input0 = ["51230100", "123", "000"];
    var expected = ["512301", "123", ""];

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.removeTrailingZeros(input0[i]);
      expect(output, expected[i]);
    }
  });

  test("test findIntersectionValues", () {
    var input0 = [
      [2, 3, 2],
      [4, 3, 2, 3, 1],
      [3, 4, 2, 3]
    ];
    var input1 = [
      [1, 2],
      [2, 2, 5, 2, 3, 6],
      [1, 5]
    ];
    var expected = [
      [2, 1],
      [3, 4],
      [0, 0]
    ];
    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.findIntersectionValues(input0[i], input1[i]);
      expect(output, expected[i]);
    }
  });
  test("test numPrimeArrangements", () {
    var input0 = [5, 100];
    var expected = [12, 682289015];

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.numPrimeArrangements(input0[i]);
      expect(output, expected[i]);
    }
  });
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
