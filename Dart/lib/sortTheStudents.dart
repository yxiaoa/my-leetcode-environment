class Solution {
  List<List<int>> sortTheStudents(List<List<int>> score, int k) {
    score.sort((a, b) => b[k].compareTo(a[k]));
    return score;
  }
}
