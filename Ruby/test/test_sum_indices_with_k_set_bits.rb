require_relative 'test_helper'
require_relative '..\solution\sum_indices_with_k_set_bits'

test_cases = [
  [[[5, 10, 1, 5, 2], 1], 13],
  [[[4, 3, 2, 1], 2], 1]
]

run_tests(test_cases, method(:sum_indices_with_k_set_bits))
