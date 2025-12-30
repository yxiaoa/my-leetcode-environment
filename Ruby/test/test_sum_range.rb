require_relative "test_helper"
require_relative "../solution/sum_range"

test_cases = [
  [[["NumArray", "sumRange", "sumRange", "sumRange"], [[[-2, 0, 3, -5, 2, -1]], [0, 2], [2, 5], [0, 5]]], [0, 1, -1, -3]],
]

test_cases.each do |testcase|
  input0, expected = testcase
  commands, params = input0
  num_array = nil
  commands.each_with_index.map do |command, i|
    if command == "NumArray"
      num_array = NumArray.new(params[i][0])
    elsif command == "sumRange"
      output = num_array.sum_range(params[i][0], params[i][1])
      assert_equal(expected[i], output)
    else
      raise "Unknown command #{command}"
    end
  end
end

test_summary
