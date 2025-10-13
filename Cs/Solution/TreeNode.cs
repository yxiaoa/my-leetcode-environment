
using System;

namespace Solution
{
	public class TreeNode
	{
		public int val;
		public TreeNode left;
		public TreeNode right;
		public TreeNode(int val = 0, TreeNode left = null, TreeNode right = null)
		{
			this.val = val;
			this.left = left;
			this.right = right;
		}
		public TreeNode(int[] arr)
		{
			if (arr == null) throw new ArgumentException("Array must not be null");
			if (arr.Length == 0) return;

			val = arr[0];
			var nodes = new TreeNode[arr.Length];
			nodes[0] = this;

			for (int i = 1; i < arr.Length; i++)
			{
				if (arr[i] == int.MinValue) continue; // Using int.MinValue to represent null

				var node = new TreeNode(arr[i]);
				nodes[i] = node;

				int parentIndex = (i - 1) / 2;
				if (i % 2 == 1)
					nodes[parentIndex].left = node;
				else
					nodes[parentIndex].right = node;
			}
		}
	}
}
