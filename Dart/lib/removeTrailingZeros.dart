class Solution {
  String removeTrailingZeros(String num) {
    return num.replaceAll(RegExp(r'0+$'), '');
  }
}
