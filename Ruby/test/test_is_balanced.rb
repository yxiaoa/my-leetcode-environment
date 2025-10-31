require_relative "test_helper"
require_relative "../solution/is_balanced"

test_cases = [
  [["1234"], false],
  [["24123"], true],
]

run_tests(test_cases, method(:is_balanced))
