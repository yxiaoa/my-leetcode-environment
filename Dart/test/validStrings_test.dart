import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/validStrings.dart';

void main() {
  test("test example 1", () {
    var input = 3;
    var expected = ["010", "011", "101", "110", "111"];

    final sln = Solution();
    var output = sln.validStrings(input);
    expect(output, expected);
  });
  test("test example 2", () {
    var input = 1;
    var expected = ["0", "1"];

    final sln = Solution();
    var output = sln.validStrings(input);
    expect(output, expected);
  });
}
