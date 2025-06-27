import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/minCosts.dart';

void main() {
  test("test example 1", () {
    var input0 = [5, 3, 4, 1, 3, 2];
    var expected = [5, 3, 3, 1, 1, 1];

    final sln = Solution();
    var output = sln.minCosts(input0);
    expect(output, expected);
  });
  test("test example 2", () {
    var input0 = [1, 2, 4, 6, 7];
    var expected = [1, 1, 1, 1, 1];

    final sln = Solution();
    var output = sln.minCosts(input0);
    expect(output, expected);
  });
}
