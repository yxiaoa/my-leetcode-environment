# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
	left = 1
	right = n
	while left < right
		mid = left + (right - left) / 2
		if is_bad_version(mid)
			right = mid
		else
			left = mid + 1
		end
	end
	left
end

input0 = [5, 1]
input1 = [4, 1]
expect = [4, 1]
$bad = 0
def is_bad_version(version)
	version == $bad
end

fail_cnt = 0
pass_cnt = 0

puts "\n"
for i in 0...input0.length
	$bad = input1[i]
        output = first_bad_version(input0[i])
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
