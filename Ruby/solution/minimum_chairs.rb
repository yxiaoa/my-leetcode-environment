# @param {String} s
# @return {Integer}
def minimum_chairs(s)
	max = count = 0
	s.each_char do |c|
		count += (c == "E" ? 1 : -1)
		max = [max, count].max
	end
	max
end

input0 = ["EEEEEEE", "ELELEEL", "ELEELEELLL"]
expect = [7, 2, 3]

fail_cnt = 0
pass_cnt = 0

puts "\n"
for i in 0...input0.length
        output = minimum_chairs(input0[i])
        if expect[i] != output
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
