# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer} k
# @return {Integer}
def number_of_pairs(nums1, nums2, k)
  nums1.sum { |num1| nums2.count { |num2| (num1 % (k * num2)).zero? } }
end
