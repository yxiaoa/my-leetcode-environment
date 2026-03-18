import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/maximumUnits.dart';

void main() {
  test("test example 1", () {
    var input0 = [
      [1, 3],
      [2, 2],
      [3, 1]
    ];
    var input1 = 4;
    var expected = 8;

    final sln = Solution();
    var output = sln.maximumUnits(input0, input1);
    expect(output, expected);
  });
  test("test example 2", () {
    var input0 = [
      [5, 10],
      [2, 5],
      [4, 7],
      [3, 9]
    ];
    var input1 = 10;
    var expected = 91;

    final sln = Solution();
    var output = sln.maximumUnits(input0, input1);
    expect(output, expected);
  });
}
