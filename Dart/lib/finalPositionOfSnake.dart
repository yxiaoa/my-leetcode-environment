class Solution {
  int finalPositionOfSnake(int n, List<String> commands) {
    var pos = 0;
    for (var command in commands) {
      if (command == "RIGHT") {
        pos++;
      } else if (command == "LEFT") {
        pos--;
      } else if (command == "UP") {
        pos -= n;
      } else {
        pos += n;
      }
    }
    return pos;
  }
}
