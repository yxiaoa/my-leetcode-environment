# @param {String} s
# @return {Integer}
def reverse_degree(s)
  s.chars.each_with_index.reduce(0) { |sum, (c, i)| sum + (26 - c.ord + 97) * (i + 1) }
end
