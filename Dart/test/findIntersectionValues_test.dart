import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/findIntersectionValues.dart';

void main() {
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
}
