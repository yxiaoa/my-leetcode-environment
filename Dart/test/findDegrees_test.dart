import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/findDegrees.dart';

void main() {
  test("test example 1", () {
    var input = [[0,1,1],[1,0,1],[1,1,0]];
    var expected = [2,2,2];

    final sln = Solution();
    var output = sln.findDegrees(input);
    expect(output, expected);
  });
    test("test example 2", () {
    var input =[[0,1,0],[1,0,0],[0,0,0]];
    var expected = [1,1,0];

    final sln = Solution();
    var output = sln.findDegrees(input);
    expect(output, expected);
  });
   test("test example 3", () {
    var input =[[0]];
    var expected = [0];

    final sln = Solution();
    var output = sln.findDegrees(input);
    expect(output, expected);
  });
}
