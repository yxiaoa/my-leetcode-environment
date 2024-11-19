import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/surfaceArea.dart';

void main() {
  test("test surfaceArea", () {
    var input0 = [
      [
        [1, 2],
        [3, 4]
      ],
      [
        [1, 1, 1],
        [1, 0, 1],
        [1, 1, 1]
      ],
      [
        [2]
      ],
      [
        [2, 2, 2],
        [2, 1, 2],
        [2, 2, 2]
      ]
    ];
    var expected = [34, 32, 10, 46];

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.surfaceArea(input0[i]);
      expect(output, expected[i]);
    }
  });
}
