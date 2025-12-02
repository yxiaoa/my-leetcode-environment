require_relative "test_helper"
require_relative "../solution/find_permutation_difference"

test_cases = [
  [["abc", "bac"], 2],
  [["abcde", "edbac"], 12],
]

run_tests(test_cases, method(:find_permutation_difference))
