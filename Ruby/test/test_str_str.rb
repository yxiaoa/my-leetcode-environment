require_relative 'test_helper'
require_relative '..\solution\str_str'

test_cases = [
  [["sadbutsad", "sad"], 0],
  [["leetcode", "leeto"], -1]
]

run_tests(test_cases, method(:str_str))
