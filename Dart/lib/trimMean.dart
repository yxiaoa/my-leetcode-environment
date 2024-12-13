class Solution {
  double trimMean(List<int> arr) {
    arr.sort();
    var n = arr.length;
    var fivePercent = n ~/ 20;
    var sum = 0;
    for (var i = fivePercent; i < n - fivePercent; i++) {
      sum += arr[i];
    }
    return sum / (n - fivePercent * 2);
  }
}
