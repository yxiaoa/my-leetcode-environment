import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/getSneakyNumbers.dart';

void main() {
  test("test example 1", () {
    var input = [0, 1, 1, 0];
    var expected = [0, 1];

    final sln = Solution();
    var output = sln.getSneakyNumbers(input);
    output.sort();
    expected.sort();
    expect(output, expected);
  });
  test("test example 2", () {
    var input = [0, 3, 2, 1, 3, 2];
    var expected = [2, 3];

    final sln = Solution();
    var output = sln.getSneakyNumbers(input);
    output.sort();
    expected.sort();
    expect(output, expected);
  });
  test("test example 3", () {
    var input = [7, 1, 5, 4, 3, 4, 6, 0, 9, 5, 8, 2];
    var expected = [4, 5];

    final sln = Solution();
    var output = sln.getSneakyNumbers(input);
    output.sort();
    expected.sort();
    expect(output, expected);
  });
}
