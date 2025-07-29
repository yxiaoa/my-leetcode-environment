class Solution {
  int reverseDegree(String s) {
    var product = 0;
    for (var i = 0; i < s.length; i++) {
      product += (26 - s[i].codeUnitAt(0) + 'a'.codeUnitAt(0)) * (i + 1);
    }
    return product;
  }
}
