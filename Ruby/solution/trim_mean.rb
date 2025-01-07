# @param {Integer[]} arr
# @return {Float}
def trim_mean(arr)
	arr.sort!
	trim = arr.length / 20
	arr[trim...-trim].sum.to_f / (arr.length - 2 * trim)
end

input0 = [[1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3], [6,2,7,5,1,2,0,3,10,2,5,0,5,5,0,8,7,6,8,0], [6,0,7,0,7,5,7,8,3,4,0,7,8,1,6,8,1,1,2,4,8,1,9,5,4,3,8,5,10,8,6,6,1,0,6,10,8,2,3,4]]
expect = [2.00000, 4.00000, 4.77778]

fail_cnt = 0
pass_cnt = 0

puts "\n"
for i in 0...input0.length
	output = trim_mean(input0[i])
	if (expect[i] - output).abs > 0.00001
		fail_cnt += 1
		puts "Input #{i} expect #{expect[i]}, actual #{output}"
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
puts "test #{fail_cnt+pass_cnt}"
puts "pass #{pass_cnt}"
puts "fail #{fail_cnt}"
puts "======================"
