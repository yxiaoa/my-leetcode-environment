import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/destCity.dart';

void main() {
  test("test destCity", () {
    var input0 = [
      [
        ["London", "New York"],
        ["New York", "Lima"],
        ["Lima", "Sao Paulo"]
      ],
      [
        ["B", "C"],
        ["D", "B"],
        ["C", "A"]
      ],
      [
        ["A", "Z"]
      ]
    ];
    var expected = ["Sao Paulo", "A", "Z"];

    final sln = Solution();
    for (var i = 0; i < input0.length; i++) {
      var output = sln.destCity(input0[i]);
      expect(output, expected[i]);
    }
  });
}
