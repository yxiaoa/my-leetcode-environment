class Solution {
  bool isBalanced(String num) {
    int left = 0, right = 0;
    for (int i = 0; i < num.length; i += 2) {
      left += int.parse(num[i]);
    }
    for (int i = 1; i < num.length; i += 2) {
      right += int.parse(num[i]);
    }
    return left == right;
  }
}
