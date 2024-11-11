# @param {Integer[][]} points
# @param {Integer[][]} queries
# @return {Integer[]}
def count_points(points, queries)
	queries.map{|q| points.count{|p| ((p[0]-q[0]) * (p[0]-q[0]) + (p[1]-q[1]) * (p[1]-q[01])) <= (q[2] * q[2])}}
end

input0 = [[[1,3],[3,3],[5,3],[2,2]], [[1,1],[2,2],[3,3],[4,4],[5,5]]]
input1 = [[[2,3,1],[4,3,1],[1,1,2]], [[1,2,2],[2,2,2],[4,3,2],[4,3,3]]]
expect = [[3,2,2], [2,3,2,4]]

fail_cnt = 0
pass_cnt = 0

puts "\n"
for i in 0...input0.length
        output = count_points(input0[i], input1[i])
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
