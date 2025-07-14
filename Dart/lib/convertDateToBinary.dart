class Solution {
  String convertDateToBinary(String date) {
    List<String> parts = date.split('-');
    String yearBinary = int.parse(parts[0]).toRadixString(2);
    String monthBinary = int.parse(parts[1]).toRadixString(2);
    String dayBinary = int.parse(parts[2]).toRadixString(2);
    return '$yearBinary-$monthBinary-$dayBinary';
  }
}
