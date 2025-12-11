import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/recoverOrder.dart';

void main() {
  test("test example 1", () {
    var input0 = [3, 1, 2, 5, 4];
    var input1 = [1, 3, 4];
    var expected = [3, 1, 4];

    final sln = Solution();
    var output = sln.recoverOrder(input0, input1);
    expect(output, expected);
  });
  test("test example 2", () {
    var input0 = [1, 4, 5, 3, 2];
    var input1 = [2, 5];
    var expected = [5, 2];

    final sln = Solution();
    var output = sln.recoverOrder(input0, input1);
    expect(output, expected);
  });
}
