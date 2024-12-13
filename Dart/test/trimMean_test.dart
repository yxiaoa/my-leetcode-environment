import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/trimMean.dart';

void main() {
  test("test Example 1", () {
    var input0 = [1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3];
    var expected = 2.00000;

    final sln = Solution();
    var output = sln.trimMean(input0);
    expect(output, expected);
  });
  test("test Example 2", () {
    var input0 = [6, 2, 7, 5, 1, 2, 0, 3, 10, 2, 5, 0, 5, 5, 0, 8, 7, 6, 8, 0];
    var expected = 4.00000;

    final sln = Solution();
    var output = sln.trimMean(input0);
    expect(output, expected);
  });
  test("test Example 3", () {
    var input0 = [6,0,7,0,7,5,7,8,3,4,0,7,8,1,6,8,1,1,2,4,8,1,9,5,4,3,8,5,10,8,6,6,1,0,6,10,8,2,3,4];
    var expected = 4.77778;

    final sln = Solution();
    var output = sln.trimMean(input0);
    expect(output, closeTo(expected, 0.00001));
  });
}
