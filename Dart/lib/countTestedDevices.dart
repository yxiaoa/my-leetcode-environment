class Solution {
  int countTestedDevices(List<int> batteryPercentages) {
    var cnt = 0;
    batteryPercentages.forEach((b) {
      if (b > cnt) {
        cnt++;
      }
    });
    return cnt;
  }
}
