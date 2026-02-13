require_relative "test_helper"
require_relative "../solution/unique_morse_representations"

test_cases = [
  [[["gin", "zen", "gig", "msg"]], 2],
  [[["a"]], 1],
]

run_tests(test_cases, method(:unique_morse_representations))
