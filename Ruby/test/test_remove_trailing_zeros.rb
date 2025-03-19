require_relative 'test_helper'
require_relative '..\solution\remove_trailing_zeros'

test_cases = [
  ["51230100", "512301"],
  ["123", "123"]
]

run_tests(test_cases, method(:remove_trailing_zeros))
