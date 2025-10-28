import 'package:flutter_test/flutter_test.dart';
import 'package:leetcode/has_path_sum.dart';
import 'package:leetcode/tree_node.dart';

void main() {
  test("test example 1", () {
    var input0 = [5, 4, 8, 11, null, 13, 4, 7, 2, null, null, null, 1];
    var input1 = 22;
    var expected = true;

    final sln = Solution();
    var output = sln.hasPathSum(TreeNode.fromArray(input0), input1);
    expect(output, expected);
  });
  test("test example 2", () {
    var input0 = [1, 2, 3];
    var input1 = 5;
    var expected = false;

    final sln = Solution();
    var output = sln.hasPathSum(TreeNode.fromArray(input0), input1);
    expect(output, expected);
  });
  test("test example 3", () {
    var input0 = [];
    var input1 = 0;
    var expected = false;

    final sln = Solution();
    var output = sln.hasPathSum(TreeNode.fromArray(input0), input1);
    expect(output, expected);
  });
}
