import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/countTestedDevices.dart';

void main() {
  test("test countTestedDevices", () {
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
