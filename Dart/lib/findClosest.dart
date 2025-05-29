class Solution {
  int findClosest(int x, int y, int z) {
    int d = (x - z).abs() - (y - z).abs();
    return (d < 0)
        ? 1
        : (d > 0)
            ? 2
            : 0;
  }
}
