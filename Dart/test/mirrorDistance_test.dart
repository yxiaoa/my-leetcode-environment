import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/mirrorDistance.dart';

void main() {
  test("test example 1", () {
    var input = 25;
    var expected = 27;

    final sln = Solution();
    var output = sln.mirrorDistance(input);
    expect(output, expected);
  });
  test("test example 2", () {
    var input = 10;
    var expected = 9;

    final sln = Solution();
    var output = sln.mirrorDistance(input);
    expect(output, expected);
  });
  test("test example 3", () {
    var input = 7;
    var expected = 0;

    final sln = Solution();
    var output = sln.mirrorDistance(input);
    expect(output, expected);
  });
}
