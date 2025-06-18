require_relative "test_helper"
require_relative "../solution/max_freq_sum"

test_cases = [
  ["successes", 6],
  ["aeiaeia", 3],
]

run_tests(test_cases, method(:max_freq_sum))
