import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/findPoisonedDuration.dart';

void main() {
  test("test example 1", () {
    var input0 = [1, 4];
    var input1 = 2;
    var expected = 4;

    final sln = Solution();
    var output = sln.findPoisonedDuration(input0, input1);
    expect(output, expected);
  });

  test("test example 2", () {
    var input0 = [1, 2];
    var input1 = 2;
    var expected = 3;

    final sln = Solution();
    var output = sln.findPoisonedDuration(input0, input1);
    expect(output, expected);
  });
}
