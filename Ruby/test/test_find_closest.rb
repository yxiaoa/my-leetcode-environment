require_relative "test_helper"
require_relative "../solution/find_closest"

test_cases = [
  [[2, 7, 4], 1],
  [[2, 5, 6], 2],
  [[1, 5, 3], 0],
]

run_tests(test_cases, method(:find_closest))
