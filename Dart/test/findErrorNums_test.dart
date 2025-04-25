import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/findErrorNums.dart';

void main() {
  test("test example 1", () {
    var input0 = [1, 2, 2, 4];
    var expected = [2, 3];

    final sln = Solution();

    var output = sln.findErrorNums(input0);
    expect(output, expected);
  });

  test("test example 2", () {
    var input0 = [1, 1];
    var expected = [1, 2];

    final sln = Solution();

    var output = sln.findErrorNums(input0);
    expect(output, expected);
  });

  test("test fail 1", () {
    var input0 = [3, 2, 3, 4, 6, 5];
    var expected = [3, 1];

    final sln = Solution();

    var output = sln.findErrorNums(input0);
    expect(output, expected);
  });
}
