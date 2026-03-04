import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/sortTheStudents.dart';

void main() {
  test("test example 1", () {
    var input0 = [
      [10, 6, 9, 1],
      [7, 5, 11, 2],
      [4, 8, 3, 15]
    ];
    var input1 = 2;
    var expected = [
      [7, 5, 11, 2],
      [10, 6, 9, 1],
      [4, 8, 3, 15]
    ];

    final sln = Solution();
    var output = sln.sortTheStudents(input0, input1);
    expect(output, expected);
  });
  test("test example 2", () {
    var input0 = [
      [3, 4],
      [5, 6]
    ];
    var input1 = 0;
    var expected = [
      [5, 6],
      [3, 4]
    ];

    final sln = Solution();
    var output = sln.sortTheStudents(input0, input1);
    expect(output, expected);
  });
}
