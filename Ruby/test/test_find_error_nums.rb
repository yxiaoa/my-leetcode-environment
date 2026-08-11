require_relative "test_helper"
require_relative "../solution/find_error_nums"

test_cases = [
  [[[1, 2, 2, 4]], [2, 3]],
  [[[1, 1]], [1, 2]],
]

run_tests(test_cases, method(:find_error_nums))
