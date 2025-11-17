require_relative "test_helper"
require_relative "../solution/alternating_sum"

test_cases = [
  [[[1, 3, 5, 7]], -4],
  [[[100]], 100],
]

run_tests(test_cases, method(:alternating_sum))
