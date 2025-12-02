# @param {String} s
# @param {String} t
# @return {Integer}
def find_permutation_difference(s, t)
  s_map = Hash.new(0)
  sum = 0
  s.chars.each_with_index { |char, i| s_map[char] = i }
  t.chars.each_with_index { |char, i| sum += (s_map[char] - i).abs }
  sum
end
