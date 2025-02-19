def run_tests(test_cases, function)
	fail_cnt = 0
	pass_cnt = 0

	puts "\n"
	test_cases.each_with_index do |(input, expected), index|
	  output = function.call(*input)
	  if expected != output
	    fail_cnt += 1
	    puts "Input #{index} expect #{expected}, actual #{output}"
	  else
	    pass_cnt += 1
	  end
	end

	puts "==== Test Summary ===="
	if fail_cnt == 0
	  puts "TEST PASS!"
	else
	  puts "TEST FAIL!"
	end
	puts "test #{fail_cnt + pass_cnt}"
	puts "pass #{pass_cnt}"
	puts "fail #{fail_cnt}"
	puts "======================"
end
