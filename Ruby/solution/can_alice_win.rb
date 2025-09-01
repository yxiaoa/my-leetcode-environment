# @param {Integer[]} nums
# @return {Boolean}
def can_alice_win(nums)
  total = nums.sum
  single_digit = nums.select { |n| n < 10 }.sum
  total != 2 * single_digit
end
