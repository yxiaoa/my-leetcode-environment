import 'dart:math';

class Solution {
  int maximumUnits(List<List<int>> boxTypes, int truckSize) {
    int totalUnits = 0;
    boxTypes.sort((a, b) => b[1].compareTo(a[1]));
    for (List<int> boxType in boxTypes) {
      int numberOfBoxes = boxType[0];
      int unitsPerBox = boxType[1];
      int boxesToLoad = min(truckSize, numberOfBoxes);
      totalUnits += boxesToLoad * unitsPerBox;
      truckSize -= boxesToLoad;
      if (truckSize == 0) {
        break;
      }
    }
    return totalUnits;
  }
}
