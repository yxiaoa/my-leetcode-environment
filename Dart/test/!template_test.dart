import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/getSneakyNumbers.dart';

void main() {
  test("test example", () {
    var input = [0, 1, 1, 0];
    var expected = true;

    final sln = Solution();
    var output = sln.getSneakyNumbers(input);
    expect(output, expected);
  });
}
