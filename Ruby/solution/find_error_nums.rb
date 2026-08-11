# @param {Integer[]} nums
# @return {Integer[]}
def find_error_nums(nums)
  duplicate = nums.group_by { |n| n }.select { |k, v| v.size > 1 }.keys.first
  missing = (1..nums.size).to_a - nums
  [duplicate, missing.first]
end
