class Solution {
  int mostFrequentEven(List<int> nums) {
    Map<int, int> count = {};
    for (int num in nums) {
      if (num % 2 == 0) {
        count[num] = (count[num] ?? 0) + 1;
      }
    }
    int maxCount = 0;
    int result = -1;
    for (var entry in count.entries) {
      if ((entry.value > maxCount) ||
          ((entry.value == maxCount) && (entry.key < result))) {
        maxCount = entry.value;
        result = entry.key;
      }
    }
    return result;
  }
}
