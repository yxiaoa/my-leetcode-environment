import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/leftRightDifference.dart';

void main() {
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
}
