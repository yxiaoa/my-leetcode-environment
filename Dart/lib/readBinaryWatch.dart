class Solution {
  List<String> readBinaryWatch(int turnedOn) {
    var result = <String>[];
    for (var h = 0; h < 12; h++) {
      for (var m = 0; m < 60; m++) {
        if (countBit(h) + countBit(m) == turnedOn) {
          result.add('$h:${m.toString().padLeft(2, '0')}');
        }
      }
    }
    return result;
  }

  int countBit(int n) {
    var count = 0;
    while (n != 0) {
      n &= (n - 1);
      count++;
    }
    return count;
  }
}
