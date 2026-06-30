# @param {Integer[]} nums
# @return {Integer}
def subarray_sum(nums)
  prefix_sum = [nums[0]]
  for i in 1...nums.size
    prefix_sum[i] = nums[i] + prefix_sum[i - 1]
  end
  prefix_sum.unshift(0)
  sum = 0
  for i in 0...nums.size
    start = [0, i - nums[i]].max
    sum += prefix_sum[i + 1] - prefix_sum[start]
  end
  sum
end
