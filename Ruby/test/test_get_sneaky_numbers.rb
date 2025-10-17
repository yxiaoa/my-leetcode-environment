require_relative "test_helper"
require_relative "../solution/get_sneaky_numbers"

test_cases = [
  [[[0, 1, 1, 0]], [0, 1]],
  [[[0, 3, 2, 1, 3, 2]], [2, 3]],
  [[[7, 1, 5, 4, 3, 4, 6, 0, 9, 5, 8, 2]], [4, 5]],
]

run_tests(test_cases, method(:get_sneaky_numbers))
