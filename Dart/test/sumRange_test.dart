import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/sumRange.dart';

void main() {
  test("test example", () {
    var input0 = ["NumArray", "sumRange", "sumRange", "sumRange"];
    var input1 = [[-2, 0, 3, -5, 2, -1], [0, 2], [2, 5], [0, 5]];
    var expected = [null, 1, -1, -3];
    dynamic sln;
    for (var i = 0; i < input0.length; i++) {
      if (input0[i] == "NumArray") {
        sln = NumArray(List<int>.from(input1[i]));
        expect(null, expected[i]);
      } else if (input0[i] == "sumRange") {
        var output = sln.sumRange(input1[i][0], input1[i][1]);
        expect(output, expected[i]);
      }
    }
  });
}
