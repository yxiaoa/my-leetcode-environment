require_relative "test_helper"
require_relative "../solution/number_of_pairs"

test_cases = [
  [[[1, 3, 4], [1, 3, 4], 1], 5],
  [[[1, 2, 4, 12], [2, 4], 3], 2],
]

run_tests(test_cases, method(:number_of_pairs))
