# @param {String} num
# @return {String}
def remove_trailing_zeros(num)
	num.sub(/0+$/, '')
end
