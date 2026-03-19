package exercise.TreeNode;

public class TreeNode {
	public int val;
	public TreeNode left;
	public TreeNode right;

	TreeNode() {
	}

	TreeNode(int val) {
		this.val = val;
	}

	TreeNode(int val, TreeNode left, TreeNode right) {
		this.val = val;
		this.left = left;
		this.right = right;
	}

	public static TreeNode createTree(Integer[] values) {
		if (values.length == 0 || values[0] == null) {
			return null;
		}
		TreeNode root = new TreeNode(values[0]);
		TreeNode[] nodes = new TreeNode[values.length];
		nodes[0] = root;
		for (int i = 1; i < values.length; i++) {
			if (values[i] != null) {
				TreeNode node = new TreeNode(values[i]);
				nodes[i] = node;
				int parentIndex = (i - 1) / 2;
				if (i % 2 == 1) {
					nodes[parentIndex].left = node;
				} else {
					nodes[parentIndex].right = node;
				}
			}
		}
		return root;
	}

	public static Integer[] toArray(TreeNode root) {
		if (root == null) {
			return new Integer[0];
		}
		Integer[] result = new Integer[100]; // Assuming a maximum of 100 nodes for simplicity
		TreeNode[] queue = new TreeNode[100];
		int front = 0, rear = 0;
		queue[rear++] = root;
		int index = 0;
		while (front < rear) {
			TreeNode node = queue[front++];
			if (node != null) {
				result[index++] = node.val;
				queue[rear++] = node.left;
				queue[rear++] = node.right;
			} else {
				result[index++] = null;
			}
		}
		Integer[] trimmedResult = new Integer[index];
		System.arraycopy(result, 0, trimmedResult, 0, index);
		return trimmedResult;
	}
}
