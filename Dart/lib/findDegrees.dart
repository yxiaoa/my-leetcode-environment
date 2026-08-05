class Solution {
  List<int> findDegrees(List<List<int>> matrix) {
    int n = matrix.length;
    List<int> degrees = List.filled(n, 0);
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        if (matrix[i][j] == 1) {
          degrees[j]++;
        }
      }
    }
    return degrees;
  }
}
