import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/gcdOfStrings.dart';

void main() {

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
}
