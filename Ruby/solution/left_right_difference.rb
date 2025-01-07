# @param {Integer[]} nums
# @return {Integer[]}
def left_right_difference(nums)
    nums.map.with_index{|n, i| (nums[0...i].sum - nums[i+1..-1].sum).abs}
end

input0 = [[10,4,8,3], [1]]
expect = [[15,1,11,22], [0]]

fail_cnt = 0
pass_cnt = 0

puts "\n"
for i in 0...input0.length
        output = left_right_difference(input0[i])
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
