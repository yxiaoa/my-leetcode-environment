import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/uniqueMorseRepresentations.dart';

void main() {
  test("test example 1", () {
    var input = ["gin", "zen", "gig", "msg"];
    var expected = 2;

    final sln = Solution();
    var output = sln.uniqueMorseRepresentations(input);
    expect(output, expected);
  });
  test("test example 2", () {
    var input = ["a"];
    var expected = 1;

    final sln = Solution();
    var output = sln.uniqueMorseRepresentations(input);
    expect(output, expected);
  });
}
