import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/minOperations.dart';

void main() {
  test("test example 1", () {
    var input0 = [3, 9, 7];
    var input1 = 5;
    var expected = 4;

    final sln = Solution();
    var output = sln.minOperations(input0, input1);
    expect(output, expected);
  });
  test("test example 2", () {
    var input0 = [4, 1, 3];
    var input1 = 4;
    var expected = 0;

    final sln = Solution();
    var output = sln.minOperations(input0, input1);
    expect(output, expected);
  });
  test("test example 3", () {
    var input0 = [3, 2];
    var input1 = 6;
    var expected = 5;

    final sln = Solution();
    var output = sln.minOperations(input0, input1);
    expect(output, expected);
  });
}
