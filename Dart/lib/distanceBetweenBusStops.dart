class Solution {
  int distanceBetweenBusStops(List<int> distance, int start, int destination) {
    final total = distance.reduce((a, b) => a + b);
    final (min, max) = start < destination ? (start, destination) : (destination, start);
    final sum = distance.sublist(min, max).reduce((a, b) => a + b);
    return (sum < (total - sum)) ? sum : (total - sum);
  }
}
