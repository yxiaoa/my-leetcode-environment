import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/reverseDegree.dart';

void main() {
  test("test example", () {
    var input0 = ["abc", "zaza"];
    var expected = [148, 160];

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.reverseDegree(input0[i]);
      expect(output, expected[i]);
    }
  });
}
