require_relative 'test_helper'
require_relative '..\solution\sum_of_the_digits_of_harshad_number'

test_cases = [
  [[18], 9],
  [[23], -1]
]

run_tests(test_cases, method(:sum_of_the_digits_of_harshad_number))
