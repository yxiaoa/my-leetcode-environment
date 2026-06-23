import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/findRelativeRanks.dart';

void main() {
  test("test example 1", () {
    var input = [5, 4, 3, 2, 1];
    var expected = ["Gold Medal", "Silver Medal", "Bronze Medal", "4", "5"];

    final sln = Solution();
    var output = sln.findRelativeRanks(input);
    expect(output, expected);
  });
  test("test example 2", () {
    var input = [10, 3, 8, 9, 4];
    var expected = ["Gold Medal", "5", "Bronze Medal", "Silver Medal", "4"];

    final sln = Solution();
    var output = sln.findRelativeRanks(input);
    expect(output, expected);
  });
}
