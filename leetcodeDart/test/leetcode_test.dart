import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/leetcode.dart';

void main() {
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
