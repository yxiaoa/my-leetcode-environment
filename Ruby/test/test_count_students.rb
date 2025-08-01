require_relative "test_helper"
require_relative "../solution/count_students"

test_cases = [
  [[[1, 1, 0, 0], [0, 1, 0, 1]], 0],
  [[[1, 1, 1, 0, 0, 1], [1, 0, 0, 0, 1, 1]], 3],
]

run_tests(test_cases, method(:count_students))
