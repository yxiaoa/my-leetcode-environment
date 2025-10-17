# @param {Integer[]} nums
# @return {Integer[]}
def get_sneaky_numbers(nums)
  nums.uniq.select { |n| nums.count(n) > 1 }.sort
end
