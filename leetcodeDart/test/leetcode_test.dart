import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/leetcode.dart';

void main() {
  test("leet code test", () {
    var input0 = [
      [1, 1, 2, 1, 3],
      [0, 1, 2]
    ];
    var expected = [3, 2];

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.countTestedDevices(input0[i]);
      expect(output, expected[i]);
    }
  });
}
