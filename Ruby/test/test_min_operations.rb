require_relative "test_helper"
require_relative "../solution/min_operations"

test_cases = [
  [[[3, 9, 7], 5], 4],
  [[[4, 1, 3], 4], 0],
  [[[3, 2], 6], 5],
]

run_tests(test_cases, method(:min_operations))
