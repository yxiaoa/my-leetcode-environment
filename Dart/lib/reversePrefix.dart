class Solution {
  String reversePrefix(String s, int k) {
    List chars = s.split('');
    return (chars.sublist(0, k).reversed.toList() + chars.sublist(k)).join('');
  }
}
