class Solution {
  int findPermutationDifference(String s, String t) {
    var count = List<int>.filled(26, 0);
    var sum = 0;
    for (var i = 0; i < s.length; i++) {
      count[s.codeUnitAt(i) - 'a'.codeUnitAt(0)] = i;
    }
    for (var i = 0; i < t.length; i++) {
      sum += (count[t.codeUnitAt(i) - 'a'.codeUnitAt(0)] - i).abs();
    }
    return sum;
  }
}
