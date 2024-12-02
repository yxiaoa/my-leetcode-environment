import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/summaryRanges.dart';

void main() {
  test("test summaryRanges example 1", () {
    var input0 = [0, 1, 2, 4, 5, 7];
    var expected = ["0->2", "4->5", "7"];

    final sln = Solution();

    var output = sln.summaryRanges(input0);
    expect(output, expected);
  });

  test("test summaryRanges example 2", () {
    var input0 = [0, 2, 3, 4, 6, 8, 9];
    var expected = ["0", "2->4", "6", "8->9"];

    final sln = Solution();

    var output = sln.summaryRanges(input0);
    expect(output, expected);
  });
}
