import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/numberOfPairs.dart';

void main() {
  test("test numberOfPairs Example 1", () {
    var input0 = [1, 3, 4];
    var input1 = [1, 3, 4];
    var input2 = 1;
    var expected = 5;

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.numberOfPairs(input0, input1, input2);
      expect(output, expected);
    }
  });
  test("test numberOfPairs Example 2", () {
    var input0 = [1, 2, 4, 12];
    var input1 = [2, 4];
    var input2 = 3;
    var expected = 2;

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.numberOfPairs(input0, input1, input2);
      expect(output, expected);
    }
  });
}
