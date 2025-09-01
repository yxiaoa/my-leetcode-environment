require_relative "test_helper"
require_relative "../solution/can_alice_win"

test_cases = [
  [[[1, 2, 3, 4, 10]], false],
  [[[1, 2, 3, 4, 5, 14]], true],
  [[[5, 5, 5, 25]], true],
]

run_tests(test_cases, method(:can_alice_win))
