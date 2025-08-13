class Solution {
  bool canAliceWin(List<int> nums) {
    var sum = 0;
    var singleDigitSum = 0;
    for (var n in nums) {
      sum += n;
      if (n < 10) {
        singleDigitSum += n;
      }
    }
    return sum != (singleDigitSum * 2);
  }
}
