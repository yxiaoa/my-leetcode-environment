require_relative "test_helper"
require_relative "../solution/min_costs"

test_cases = [
  [[[5, 3, 4, 1, 3, 2]], [5, 3, 3, 1, 1, 1]],
  [[[1, 2, 4, 6, 7]], [1, 1, 1, 1, 1]],
]

run_tests(test_cases, method(:min_costs))
