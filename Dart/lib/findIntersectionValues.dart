class Solution {
  List<int> findIntersectionValues(List<int> nums1, List<int> nums2) {
    var set1 = nums1.toSet();
    var set2 = nums2.toSet();
    var cnt1 = nums1.where((n) => set2.contains(n)).length;
    var cnt2 = nums2.where((n) => set1.contains(n)).length;
    return List<int>.from([cnt1, cnt2]);
  }
}
