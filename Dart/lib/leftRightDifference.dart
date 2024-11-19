class Solution {
  List<int> leftRightDifference(List<int> nums) {
    var ret = List.filled(nums.length, 0);
    var left = 0;
    var right =
        nums.fold(0, (previousValue, element) => (previousValue + element));
    for (var i = 0; i < nums.length; i++) {
      right -= nums[i];
      ret[i] = (right - left).abs();
      left += nums[i];
    }
    return ret;
  }
}
