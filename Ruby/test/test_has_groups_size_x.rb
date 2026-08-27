require_relative "test_helper"
require_relative "../solution/has_groups_size_x"

test_cases = [
  [[[1, 2, 3, 4, 4, 3, 2, 1]], true],
  [[[1, 1, 1, 2, 2, 2, 3, 3]], false],
]

run_tests(test_cases, method(:has_groups_size_x))
