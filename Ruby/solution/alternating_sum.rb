# @param {Integer[]} nums
# @return {Integer}
def alternating_sum(nums)
  nums.each_with_index.reduce(0) { |sum, (num, i)| sum + (i.even? ? num : -num) }
end
