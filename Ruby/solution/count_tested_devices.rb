# @param {Integer[]} battery_percentages
# @return {Integer}
def count_tested_devices(battery_percentages)
	battery_percentages.reduce(0) { |count, b| b > count ? count + 1 : count }
end



input0 = [[1,1,2,1,3], [0,1,2]]
expect = [3,2]

fail_cnt = 0
pass_cnt = 0

puts "\n"
for i in 0...input0.length
        output = count_tested_devices(input0[i])
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
