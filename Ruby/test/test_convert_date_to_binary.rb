require_relative "test_helper"
require_relative "../solution/convert_date_to_binary"

test_cases = [
  [["2080-02-29"], "100000100000-10-11101"],
  [["1900-01-01"], "11101101100-1-1"],
]

run_tests(test_cases, method(:convert_date_to_binary))
