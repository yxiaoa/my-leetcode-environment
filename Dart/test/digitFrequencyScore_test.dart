import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/digitFrequencyScore.dart';

void main() {
  test("test example 1", () {
    var input = 122;
    var expected = 5;

    final sln = Solution();
    var output = sln.digitFrequencyScore(input);
    expect(output, expected);
  });
  test("test example 2", () {
    var input = 101;
    var expected = 2;

    final sln = Solution();
    var output = sln.digitFrequencyScore(input);
    expect(output, expected);
  });
}
