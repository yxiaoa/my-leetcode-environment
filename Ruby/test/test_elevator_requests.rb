require_relative "test_helper"
require_relative "../solution/elevator_requests"

test_cases = [
  [[5, [2, 1, 4, 3]], 7],
  [[3, [2, 0, 0]], 4],
]

run_tests(test_cases, method(:elevator_requests))
