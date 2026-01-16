require_relative "test_helper"
require_relative "../solution/find_poisoned_duration"

test_cases = [
  [[[1, 4], 2], 4],
  [[[1, 2], 2], 3],
]

run_tests(test_cases, method(:find_poisoned_duration))
