require_relative "test_helper"
require_relative "../solution/min_subarray"

test_cases = [
  [[[3, 1, 4, 2], 6], 1],
  [[[6, 3, 5, 2], 9], 2],
  [[[1, 2, 3], 3], 0],
  [[[1, 2, 3], 7], -1],
  [[[1000000000, 1000000000, 1000000000], 3], 0],
]

run_tests(test_cases, method(:min_subarray))
