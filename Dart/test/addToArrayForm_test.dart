import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/addToArrayForm.dart';

void main() {
  test("test example 1", () {
    var input0 = [1, 2, 0, 0];
    var input1 = 34;
    var expected = [1, 2, 3, 4];

    final sln = Solution();
    var output = sln.addToArrayForm(input0, input1);
    expect(output, expected);
  });
  test("test example 2", () {
    var input0 = [2, 7, 4];
    var input1 = 181;
    var expected = [4, 5, 5];

    final sln = Solution();
    var output = sln.addToArrayForm(input0, input1);
    expect(output, expected);
  });
  test("test example 3", () {
    var input0 = [2, 1, 5];
    var input1 = 806;
    var expected = [1, 0, 2, 1];

    final sln = Solution();
    var output = sln.addToArrayForm(input0, input1);
    expect(output, expected);
  });
}
