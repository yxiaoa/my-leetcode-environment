require_relative "test_helper"
require_relative "../solution/reverse_degree"

test_cases = [
  [["abc"], 148],
  [["zaza"], 160],
]

run_tests(test_cases, method(:reverse_degree))
