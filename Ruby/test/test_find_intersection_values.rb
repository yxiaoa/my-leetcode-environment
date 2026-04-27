require_relative "test_helper"
require_relative "../solution/find_intersection_values"

test_cases = [
  [[[2, 3, 2], [1, 2]], [2, 1]],
  [[[4, 3, 2, 3, 1], [2, 2, 5, 2, 3, 6]], [3, 4]],
  [[[3, 4, 2, 3], [1, 5]], [0, 0]],
]

run_tests(test_cases, method(:find_intersection_values))
