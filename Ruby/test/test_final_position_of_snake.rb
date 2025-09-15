require_relative "test_helper"
require_relative "../solution/final_position_of_snake"

test_cases = [
  [[2, ["RIGHT", "DOWN"]], 3],
  [[3, ["DOWN", "RIGHT", "UP"]], 1],
]

run_tests(test_cases, method(:final_position_of_snake))
