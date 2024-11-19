import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/removeTrailingZeros.dart';

void main() {
  test("test removeTrailingZeros", () {
    var input0 = ["51230100", "123", "000"];
    var expected = ["512301", "123", ""];

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.removeTrailingZeros(input0[i]);
      expect(output, expected[i]);
    }
  });
}
