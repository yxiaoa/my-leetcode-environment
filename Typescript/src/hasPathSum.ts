/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     val: number
 *     left: TreeNode | null
 *     right: TreeNode | null
 *     constructor(val?: number, left?: TreeNode | null, right?: TreeNode | null) {
 *         this.val = (val===undefined ? 0 : val)
 *         this.left = (left===undefined ? null : left)
 *         this.right = (right===undefined ? null : right)
 *     }
 * }
 */

import { TreeNode } from "./TreeNode";

export function hasPathSum(root: TreeNode | null, targetSum: number): boolean {
	if (!root) return false;
	if (!root.left && !root.right) {
		return root.val === targetSum;
	}
	const newTargetSum = targetSum - root.val;
	return hasPathSum(root.left, newTargetSum) || hasPathSum(root.right, newTargetSum);
};
