class NumArray {
  List<int> saveNums = [];
  NumArray(List<int> nums) {
    saveNums = nums;
  }

  int sumRange(int left, int right) {
    int sum = 0;
    for (int i = left; i <= right; i++) {
      sum += saveNums[i];
    }
    return sum;
  }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * NumArray obj = NumArray(nums);
 * int param1 = obj.sumRange(left,right);
 */
