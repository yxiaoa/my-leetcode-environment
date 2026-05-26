require_relative "test_helper"
require_relative "../solution/dest_city"

test_cases = [
  [[[["London", "New York"], ["New York", "Lima"], ["Lima", "Sao Paulo"]]], "Sao Paulo"],
  [[[["B", "C"], ["D", "B"], ["C", "A"]]], "A"],
]

run_tests(test_cases, method(:dest_city))
