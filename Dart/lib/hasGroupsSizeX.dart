class Solution {
  bool hasGroupsSizeX(List<int> deck) {
    var count = <int, int>{};
    for (var card in deck) {
      count[card] = (count[card] ?? 0) + 1;
    }
    var gcd = count.values.first;
    for (var value in count.values) {
      gcd = _gcd(gcd, value);
      if (gcd == 1) {
        return false;
      }
    }
    return true;
  }

  int _gcd(int a, int b) {
    while (b != 0) {
      var t = b;
      b = a % b;
      a = t;
    }
    return a;
  }
}
