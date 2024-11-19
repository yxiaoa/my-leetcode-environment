import 'dart:math';

class Solution {
  List<int> shortestToChar(String s, String c) {
    var n = s.length;
    var res = List.filled(n, 0);
    var prev = -n;
    for (var i = 0; i < n; i++) {
      if (s[i] == c) {
        prev = i;
      }
      res[i] = i - prev;
    }
    prev = 2 * n;
    for (var i = n - 1; i >= 0; i--) {
      if (s[i] == c) {
        prev = i;
      }
      res[i] = min(res[i], prev - i);
    }
    return res;
  }
}
