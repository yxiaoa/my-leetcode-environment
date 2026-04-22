import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/distanceBetweenBusStops.dart';

void main() {
  test("test example 1", () {
    var input0 = [1, 2, 3, 4];
    var input1 = 0;
    var input2 = 1;
    var expected = 1;

    final sln = Solution();
    var output = sln.distanceBetweenBusStops(input0, input1, input2);
    expect(output, expected);
  });
  test("test example 2", () {
    var input0 = [1, 2, 3, 4];
    var input1 = 0;
    var input2 = 2;
    var expected = 3;

    final sln = Solution();
    var output = sln.distanceBetweenBusStops(input0, input1, input2);
    expect(output, expected);
  });
  test("test example 3", () {
    var input0 = [1, 2, 3, 4];
    var input1 = 0;
    var input2 = 3;
    var expected = 4;

    final sln = Solution();
    var output = sln.distanceBetweenBusStops(input0, input1, input2);
    expect(output, expected);
  });
}
