class Solution {
  List<String> summaryRanges(List<int> nums) {
    var ret = <String>[];
    if (nums.isEmpty) {
      return ret;
    }
    var start = nums[0];
    var end = nums[0];
    for (var i = 1; i < nums.length; i++) {
      if (nums[i] == end + 1) {
        end = nums[i];
      } else {
        if (start == end) {
          ret.add('$start');
        } else {
          ret.add('$start->$end');
        }
        start = nums[i];
        end = nums[i];
      }
    }
    if (start == end) {
      ret.add('$start');
    } else {
      ret.add('$start->$end');
    }
    return ret;
  }
}
