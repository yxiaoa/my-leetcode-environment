import 'dart:math';

class Solution {
  List<int> minCosts(List<int> cost) {
    if (cost.isEmpty) return [];
    List<int> result = [cost[0]];
    var costMin = cost[0];
    for (int i = 1; i < cost.length; i++) {
      costMin = min(cost[i], costMin);
      result.add(costMin);
    }
    return result;
  }
}
