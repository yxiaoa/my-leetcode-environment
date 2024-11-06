class Solution {
  List<String> uncommonFromSentences(String s1, String s2) {
    var map = <String, int>{};
    for (var word in s1.split(' ')) {
      map[word] = (map[word] ?? 0) + 1;
    }
    for (var word in s2.split(' ')) {
      map[word] = (map[word] ?? 0) + 1;
    }
    return map.entries.where((e) => e.value == 1).map((e) => e.key).toList();
  }
}
