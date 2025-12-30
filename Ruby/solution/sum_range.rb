class NumArray

=begin
    :type nums: Integer[]
=end
  def initialize(nums)
    @nums = nums
  end

=begin
    :type left: Integer
    :type right: Integer
    :rtype: Integer
=end
  def sum_range(left, right)
    @nums[left..right].sum
  end
end

# Your NumArray object will be instantiated and called as such:
# obj = NumArray.new(nums)
# param_1 = obj.sum_range(left, right)
