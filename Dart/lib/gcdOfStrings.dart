class Solution {
  int _gcd(int a, int b) {
    var c = a % b;
    while (c != 0) {
      a = b;
      b = c;
      c = a % b;
    }
    return b;
  }

  String gcdOfStrings(String str1, String str2) {
    return ((str1 + str2) == (str2 + str1))
        ? str1.substring(0, _gcd(str1.length, str2.length))
        : "";
  }
}
