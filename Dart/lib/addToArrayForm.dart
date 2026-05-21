class Solution {
  List<int> addToArrayForm(List<int> num, int k) {
    List<int> result = [];
    int carry = 0;
    int i = num.length - 1;
    while ((i >= 0) || (k > 0) || (carry > 0)) {
      int sum = carry;
      if (i >= 0) {
        sum += num[i];
        i--;
      }
      if (k > 0) {
        sum += k % 10;
        k ~/= 10;
      }
      result.add(sum % 10);
      carry = sum ~/ 10;
    }
    return result.reversed.toList();
  }
}
