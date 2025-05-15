import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/finalPositionOfSnake.dart';

void main() {
  test("test example 1", () {
    var input0 = 2;
    var input1 = ["RIGHT", "DOWN"];
    var expected = 3;

    final sln = Solution();
    var output = sln.finalPositionOfSnake(input0, input1);

    expect(output, expected);
  });

  test("test example 2", () {
    var input0 = 3;
    var input1 = ["DOWN","RIGHT","UP"];
    var expected = 1;

    final sln = Solution();
    var output = sln.finalPositionOfSnake(input0, input1);

    expect(output, expected);
  });
}
