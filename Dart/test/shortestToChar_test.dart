import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/shortestToChar.dart';

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
}
