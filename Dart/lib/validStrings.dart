class Solution {
  List<String> validStrings(int n) {
    List<String> result = [];
    int totalCombinations = 1 << n;

    for (int i = 0; i < totalCombinations; i++) {
      String binaryString = i.toRadixString(2).padLeft(n, '0');
      if (!binaryString.contains('00')) {
        result.add(binaryString);
      }
    }

    return result;
  }
}
