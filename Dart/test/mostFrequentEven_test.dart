import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/mostFrequentEven.dart';

void main() {
  test("test example 1", () {
    var input = [0, 1, 2, 2, 4, 4, 1];
    var expected = 2;

    final sln = Solution();
    var output = sln.mostFrequentEven(input);
    expect(output, expected);
  });
  test("test example 2", () {
    var input = [4, 4, 4, 9, 2, 4];
    var expected = 4;

    final sln = Solution();
    var output = sln.mostFrequentEven(input);
    expect(output, expected);
  });
  test("test example 3", () {
    var input = [29, 47, 21, 41, 13, 37, 25, 7];
    var expected = -1;

    final sln = Solution();
    var output = sln.mostFrequentEven(input);
    expect(output, expected);
  });
}
