import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/convertDateToBinary.dart';

void main() {
  test("test example", () {
    var input0 = ["2080-02-29", "1900-01-01"];
    var expected = ["100000100000-10-11101", "11101101100-1-1"];

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.convertDateToBinary(input0[i]);
      expect(output, expected[i]);
    }
  });
}
