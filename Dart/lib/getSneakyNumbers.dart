class Solution {
  List<int> getSneakyNumbers(List<int> nums) {
    var cnt = List.filled(nums.length, 0);
    List<int> sneakyNumbers = [];
    for (int num in nums) {
      if (cnt[num] > 0) {
        sneakyNumbers.add(num);
      }
      cnt[num]++;
    }
    return sneakyNumbers;
  }
}
