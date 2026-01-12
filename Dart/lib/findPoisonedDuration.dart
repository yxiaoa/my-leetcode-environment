class Solution {
  int findPoisonedDuration(List<int> timeSeries, int duration) {
    int total = duration;
    for (int i = 1; i < timeSeries.length; i++) {
      int diff = timeSeries[i] - timeSeries[i - 1];
      total += (diff < duration) ? diff : duration;
    }
    return total;
  }
}
