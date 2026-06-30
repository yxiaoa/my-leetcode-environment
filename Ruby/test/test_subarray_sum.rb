require_relative "test_helper"
require_relative "../solution/subarray_sum"

test_cases = [
  [[[2, 3, 1]], 11],
  [[[3, 1, 1, 2]], 13],
]

run_tests(test_cases, method(:subarray_sum))
