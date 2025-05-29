import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/findClosest.dart';

void main() {
  var solution = Solution();
  test("test example 1", () {
    expect(solution.findClosest(2, 7, 4), 1);
  });
  test("test example 2", () {
    expect(solution.findClosest(2, 5, 6), 2);
  });
  test("test example 3", () {
    expect(solution.findClosest(1, 5, 3), 0);
  });
}
