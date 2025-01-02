import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/deleteGreatestValue.dart';

void main() {
  test("test deleteGreatestValue Example 1", () {
    var input0 = [
      [1, 2, 4],
      [3, 3, 1]
    ];
    var expected = 8;

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.deleteGreatestValue(input0);
      expect(output, expected);
    }
  });
  test("test deleteGreatestValue Example 2", () {
    var input0 = [
      [10]
    ];
    var expected = 10;

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.deleteGreatestValue(input0);
      expect(output, expected);
    }
  });
}
