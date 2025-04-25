class Solution {
  List<int> findErrorNums(List<int> nums) {
    var duplicate = 0;
    var n = nums.length;
    var i = 0;
    nums.sort();
    for (i = 1; i < n; i++) {
      if (nums[i] == nums[i - 1]) {
        duplicate = nums[i];
        break;
      }
    }
    var sum = nums.reduce((a, b) => a + b);
    var missed = (n * (n + 1) ~/ 2) - sum + duplicate;
    return [duplicate, missed];
  }
}
