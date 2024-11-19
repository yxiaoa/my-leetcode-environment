import 'dart:math';

class Solution {
  int surfaceArea(List<List<int>> grid) {
    var n = grid.length;
    var area = 0;
    for (var i = 0; i < n; i++) {
      for (var j = 0; j < n; j++) {
        if (grid[i][j] > 0) {
          area += 2;
          for (var k = 0; k < 4; k++) {
            var x = i + [0, 0, 1, -1][k];
            var y = j + [1, -1, 0, 0][k];
            var val = 0;
            if (x >= 0 && x < n && y >= 0 && y < n) {
              val = grid[x][y];
            }
            area += max(0, grid[i][j] - val);
          }
        }
      }
    }
    return area;
  }
}
