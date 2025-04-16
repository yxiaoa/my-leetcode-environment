require_relative 'test_helper'
require_relative '../solution/stable_mountains'

test_cases = [
  [[[1, 2, 3, 4, 5], 2], [3, 4]],
  [[[10, 1, 10, 1, 10], 3], [1, 3]],
  [[[10, 1, 10, 1, 10], 10], []]
]

run_tests(test_cases, method(:stable_mountains))
