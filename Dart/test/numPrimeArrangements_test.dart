import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/numPrimeArrangements.dart';

void main() {
  test("test numPrimeArrangements", () {
    var input0 = [5, 100];
    var expected = [12, 682289015];

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.numPrimeArrangements(input0[i]);
      expect(output, expected[i]);
    }
  });
}
