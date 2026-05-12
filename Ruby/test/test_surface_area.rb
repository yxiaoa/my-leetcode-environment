require_relative "test_helper"
require_relative "../solution/surface_area"

test_cases = [
  [[[[1, 2], [3, 4]]], 34],
  [[[[1, 1, 1], [1, 0, 1], [1, 1, 1]]], 32],
  [[[[2, 2, 2], [2, 1, 2], [2, 2, 2]]], 46],
]

run_tests(test_cases, method(:surface_area))
