import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/canAliceWin.dart';

void main() {
  test("test example", () {
    var input0 = [
      [1, 2, 3, 4, 10],
      [1, 2, 3, 4, 5, 14],
      [5, 5, 5, 25]
    ];
    var expected = [false, true, true];

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.canAliceWin(input0[i]);
      expect(output, expected[i]);
    }
  });
}
