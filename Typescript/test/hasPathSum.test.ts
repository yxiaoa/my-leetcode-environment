import { expect, test } from '@jest/globals';
import { TreeNode } from '../src/TreeNode';
import * as solution from '../src/hasPathSum';

test('Example 1', () => {
	let root = [5,4,8,11,null,13,4,7,2,null,null,null,1];
	let targetSum = 22;
	let expected = true;
	expect(solution.hasPathSum(TreeNode.fromArray(root), targetSum)).toBe(expected);
});

test('Example 2', () => {
	let root = [1,2,3];
	let targetSum = 5;
	let expected = false;
	expect(solution.hasPathSum(TreeNode.fromArray(root), targetSum)).toBe(expected);
});

test('Example 3', () => {
	let root = [];
	let targetSum = 0;
	let expected = false;
	expect(solution.hasPathSum(TreeNode.fromArray(root), targetSum)).toBe(expected);
});
