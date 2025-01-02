class Solution {
  int deleteGreatestValue(List<List<int>> grid) {
    var sum = 0;
    for (var i = 0; i < grid.length; i++) {
      grid[i].sort();
    }
    for (var j = 0; j < grid[0].length; j++) {
      var max = 0;
      for (var i = 0; i < grid.length; i++) {
        if (grid[i][j] > max) {
          max = grid[i][j];
        }
      }
      sum += max;
    }
    return sum;
  }
}
