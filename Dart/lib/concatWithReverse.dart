class Solution {
  List<int> concatWithReverse(List<int> nums) {
    return nums + List.from(nums.reversed);
  }
}
