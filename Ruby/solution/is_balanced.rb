# @param {String} num
# @return {Boolean}
def is_balanced(num)
  odd = 0
  sum = 0
  num.chars.each_with_index do |c, i|
    v = c.ord - "0".ord
    odd += v if i % 2 == 0
    sum += v
  end
  sum == (odd * 2)
end
