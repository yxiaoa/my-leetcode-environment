import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/readBinaryWatch.dart';

void main() {
  test("test example 1", () {
    var input = 1;
    var expected = [
      "0:01",
      "0:02",
      "0:04",
      "0:08",
      "0:16",
      "0:32",
      "1:00",
      "2:00",
      "4:00",
      "8:00"
    ];

    final sln = Solution();
    var output = sln.readBinaryWatch(input);
    expect(output, expected);
  });
  test("test example 2", () {
    var input = 9;
    var expected = [];

    final sln = Solution();
    var output = sln.readBinaryWatch(input);
    expect(output, expected);
  });
}
