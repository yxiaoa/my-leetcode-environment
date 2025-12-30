$fail_cnt = 0
$pass_cnt = 0

def test_summary
  puts "==== Test Summary ===="
  if $fail_cnt == 0
    puts "TEST PASS!"
  else
    puts "TEST FAIL!"
  end
  puts "test #{$fail_cnt + $pass_cnt}"
  puts "pass #{$pass_cnt}"
  puts "fail #{$fail_cnt}"
  puts "======================"
end

def run_tests(test_cases, function)
  test_cases.each_with_index do |(input, expected), index|
    output = function.call(*input)
    if expected != output
      $fail_cnt += 1
      puts "Input #{index} expect #{expected}, actual #{output}"
    else
      $pass_cnt += 1
    end
  end
  test_summary
end

def assert_equal(expected, actual)
  if expected != actual
    $fail_cnt += 1
    puts "Expected #{expected}, but got #{actual}"
  else
    $pass_cnt += 1
  end
end
