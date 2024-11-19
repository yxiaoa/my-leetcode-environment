class Solution {
  int longestPalindrome(String s) {
    var map = <String, int>{};
    var sum = 0;
    var res = 0;
    for (var i = 0; i < s.length; i++) {
      String c = s[i];
      map[c] = (map[c] ?? 0) + 1;
    }
    map.forEach((key, value) {
      sum += value & ~1;
      res |= value & 1;
    });
    return sum + res;
  }
}
