import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/reversePrefix.dart';

void main() {
  test("test example 1", () {
    var input0 = "abcd";
    var input = 2;
    var expected = "bacd";
    final sln = Solution();
    var output = sln.reversePrefix(input0, input);
    expect(output, expected);
  });
  test("test example 2", () {
    var input0 = "xyz";
    var input = 3;
    var expected = "zyx";
    final sln = Solution();
    var output = sln.reversePrefix(input0, input);
    expect(output, expected);
  });
  test("test example 3", () {
    var input0 = "hey";
    var input = 1;
    var expected = "hey";
    final sln = Solution();
    var output = sln.reversePrefix(input0, input);
    expect(output, expected);
  });
}
