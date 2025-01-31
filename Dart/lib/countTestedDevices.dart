class Solution {
  int countTestedDevices(List<int> batteryPercentages) {
    var cnt = 0;
    for (var b in batteryPercentages) {
      if (b > cnt) {
        cnt++;
      }
    }
    return cnt;
  }
}
