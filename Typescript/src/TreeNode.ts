/**
 * Definition for a binary tree node.
 */

export class TreeNode {
	val: number;
	left: TreeNode | null;
	right: TreeNode | null;

	constructor(val?: number, left?: TreeNode | null, right?: TreeNode | null) {
		this.val = (val === undefined ? 0 : val);
		this.left = (left === undefined ? null : left);
		this.right = (right === undefined ? null : right);
	}

	static fromArray(arr: (number | null)[]): TreeNode | null {
		if (arr.length === 0 || arr[0] === null) return null;

		const root = new TreeNode(arr[0]);
		const queue: TreeNode[] = [root];
		let i = 1;

		while (i < arr.length) {
			const current = queue.shift();
			if (arr[i] !== null) {
				current.left = new TreeNode(arr[i]);
				queue.push(current.left);
			}
			i++;
			if (i < arr.length && arr[i] !== null) {
				current.right = new TreeNode(arr[i]);
				queue.push(current.right);
			}
			i++;
		}

		return root;
	}
}
