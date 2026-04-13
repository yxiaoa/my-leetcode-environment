require_relative "test_helper"
require_relative "../solution/longest_palindrome"

test_cases = [
  [["abccccdd"], 7],
  [["a"], 1],
  [["bb"], 2],
  [[""], 0],
]

run_tests(test_cases, method(:longest_palindrome))
