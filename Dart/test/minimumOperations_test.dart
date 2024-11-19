import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/minimumOperations.dart';

void main() {

  test("test minimumOperations", () {
    var input0 = [
      [1, 2, 3, 4],
      [3, 6, 9]
    ];
    var expected = [3, 0];

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.minimumOperations(input0[i]);
      expect(output, expected[i]);
    }
  });
}
