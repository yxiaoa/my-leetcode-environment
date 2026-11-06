class Solution {
  int mirrorDistance(int n) {
    return (int.parse(n.toString().split('').reversed.join()) - n).abs();
  }
}
