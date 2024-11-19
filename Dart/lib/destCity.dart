class Solution {
  String destCity(List<List<String>> paths) {
    var set = paths.map((e) => e[0]).toSet();
    return paths.firstWhere((e) => !set.contains(e[1]))[1];
  }
}
