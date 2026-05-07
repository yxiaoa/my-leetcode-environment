import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/MyQueue.dart';

void main() {
  test("test example", () {
    var input0 = ["MyQueue", "push", "push", "peek", "pop", "empty"];
    var input1 = [[], [1], [2], [], [], []];
    var expected = [null, null, null, 1, 1, false];

    var sln = MyQueue();
    for (int i = 0; i < input0.length; i++) {
      var output;
      switch (input0[i]) {
        case "MyQueue":
          sln = MyQueue();
          output = null;
          break;
        case "push":
          sln.push(input1[i][0]);
          output = null;
          break;
        case "peek":
          output = sln.peek();
          break;
        case "pop":
          output = sln.pop();
          break;
        case "empty":
          output = sln.empty();
          break;
      }
      expect(output, expected[i]);
    }
  });
}
