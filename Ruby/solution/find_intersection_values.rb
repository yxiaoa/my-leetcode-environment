# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def find_intersection_values(nums1, nums2)
  cnt1 = nums1.count { |n| nums2.include?(n) }
  cnt2 = nums2.count { |n| nums1.include?(n) }
  [cnt1, cnt2]
end
