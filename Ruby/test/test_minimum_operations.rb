require_relative "test_helper"
require_relative "../solution/minimum_operations"

test_cases = [
  [[[1, 2, 3, 4]], 3],
  [[[3, 6, 9]], 0],
]

run_tests(test_cases, method(:minimum_operations))
