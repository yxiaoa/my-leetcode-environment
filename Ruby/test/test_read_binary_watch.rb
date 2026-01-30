require_relative "test_helper"
require_relative "../solution/read_binary_watch"

test_cases = [
  [[1], ["0:01", "0:02", "0:04", "0:08", "0:16", "0:32", "1:00", "2:00", "4:00", "8:00"]],
  [[9], []],
]

run_tests(test_cases, method(:read_binary_watch))
