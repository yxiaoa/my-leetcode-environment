require 'set'

# @param {String} s
# @return {String}
def make_smallest_palindrome(s)
	chars = s.chars
	i = 0
	j = s.length - 1
	while i < j
	  if chars[i].ord < chars[j].ord
	    chars[j] = chars[i]
	  else
	    chars[i] = chars[j]
	  end
	  i += 1
	  j -= 1
	end
	chars.join
end

input0 = ["egcfe", "abcd", "seven"]
input2 = [10, 1, 9]
input3 = [1,2, 0, 3, 0,2]
expect = ["efcfe", "abba", "neven"]

fail_cnt = 0
pass_cnt = 0

puts "\n"
for i in 0...input0.length
        output = make_smallest_palindrome(input0[i])
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
