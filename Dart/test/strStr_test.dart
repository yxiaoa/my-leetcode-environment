import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/strStr.dart';

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
}
