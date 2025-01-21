# @param {Integer[][]} grid
# @return {Integer}
def delete_greatest_value(grid)
	grid.each(&:sort!).transpose.map(&:max).sum
end

input0 = [[[1,2,4],[3,3,1]], [[10]]]
expect = [8, 10]

fail_cnt = 0
pass_cnt = 0

puts "\n"
for i in 0...input0.length
        output = delete_greatest_value(input0[i])
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
