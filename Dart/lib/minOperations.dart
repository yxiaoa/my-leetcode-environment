class Solution {
  int minOperations(List<int> nums, int k) {
    return nums.reduce((a, b) => a + b) % k;
  }
}
