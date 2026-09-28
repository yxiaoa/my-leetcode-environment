import 'dart:math';

class Solution {
  int maxSumDivThree(List<int> nums) {
    List<int> dp = [0, 0, 0];
    for (int num in nums) {
      List<int> temp = List.from(dp);
      for (int i = 0; i < 3; i++) {
        int sum = temp[i] + num;
        dp[sum % 3] = max(dp[sum % 3], sum);
      }
    }
    return dp[0];
  }
}
