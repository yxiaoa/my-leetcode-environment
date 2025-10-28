class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);

  // Static factory method to handle empty arrays (returns null)
  static TreeNode? fromArray(List<dynamic> arr) {
    if (arr.isEmpty || arr[0] == null) return null;
    return TreeNode._fromArrayInternal(arr);
  }

  // Private named constructor for internal use
  TreeNode._fromArrayInternal(List<dynamic> arr) : val = arr[0] as int {
    List<TreeNode> queue = [this];
    int i = 1;

    while (queue.isNotEmpty && i < arr.length) {
      TreeNode current = queue.removeAt(0);

      // Add left child
      if (i < arr.length && arr[i] != null) {
        current.left = TreeNode(arr[i] as int);
        queue.add(current.left!);
      }
      i++;

      // Add right child
      if (i < arr.length && arr[i] != null) {
        current.right = TreeNode(arr[i] as int);
        queue.add(current.right!);
      }
      i++;
    }
  }

  List<int?> toArray() {
    List<int?> result = [];
    List<TreeNode?> queue = [this];

    while (queue.isNotEmpty) {
      TreeNode? current = queue.removeAt(0);

      if (current != null) {
        result.add(current.val);
        queue.add(current.left);
        queue.add(current.right);
      } else {
        result.add(null);
      }
    }

    // Remove trailing nulls
    while (result.isNotEmpty && result.last == null) {
      result.removeLast();
    }

    return result;
  }
}
