class Solution {
  int minimumOperations(List<int> nums) {
    return nums.where((n) => (0 != (n % 3))).length;
  }
}
