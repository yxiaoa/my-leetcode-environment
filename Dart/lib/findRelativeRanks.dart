class Solution {
  List<String> findRelativeRanks(List<int> score) {
    var sorted = List<int>.from(score)..sort((a, b) => b.compareTo(a));
    var rankMap = <int, String>{};
    for (var i = 0; i < sorted.length; i++) {
      if (i == 0) {
        rankMap[sorted[i]] = "Gold Medal";
      } else if (i == 1) {
        rankMap[sorted[i]] = "Silver Medal";
      } else if (i == 2) {
        rankMap[sorted[i]] = "Bronze Medal";
      } else {
        rankMap[sorted[i]] = (i + 1).toString();
      }
    }
    return score.map((s) => rankMap[s]!).toList();
  }
}
