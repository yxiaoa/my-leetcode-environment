require_relative "test_helper"
require_relative "../solution/recover_order"

test_cases = [
  [[[3, 1, 2, 5, 4], [1, 3, 4]], [3, 1, 4]],
  [[[1, 4, 5, 3, 2], [2, 5]], [5, 2]],
]

run_tests(test_cases, method(:recover_order))
