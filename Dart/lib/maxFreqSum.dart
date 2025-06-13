class Solution {
  int maxFreqSum(String s) {
    var vowels = {'a', 'e', 'i', 'o', 'u'};
    var vowelCount = <String, int>{};
    var nonVowelCount = <String, int>{};
    var maxVowel = 0;
    var maxCons = 0;

    for (int i = 0; i < s.length; i++) {
      String char = s[i];
      if (vowels.contains(char)) {
        vowelCount[char] = (vowelCount[char] ?? 0) + 1;
        maxVowel = maxVowel > (vowelCount[char] ?? 0)
            ? maxVowel
            : (vowelCount[char] ?? 0);
      } else {
        nonVowelCount[char] = (nonVowelCount[char] ?? 0) + 1;
        maxCons = maxCons > (nonVowelCount[char] ?? 0)
            ? maxCons
            : (nonVowelCount[char] ?? 0);
      }
    }

    return maxVowel + maxCons;
  }
}
