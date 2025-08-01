# @param {Integer[]} students
# @param {Integer[]} sandwiches
# @return {Integer}
def count_students(students, sandwiches)
  count = [0, 0]
  students.each do |student|
    count[student] += 1
  end
  sandwiches.each do |sandwich|
    return count[0] + count[1] if count[sandwich].zero?
    count[sandwich] -= 1
  end
  0
end
