# @param {Integer} x
# @return {Integer}
def sum_of_the_digits_of_harshad_number(x)
	sum = x.digits.sum
	x % sum == 0 ? sum : -1
end
