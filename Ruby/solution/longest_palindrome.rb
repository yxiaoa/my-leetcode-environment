# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  counts = s.each_char.with_object(Hash.new(0)) { |c, h| h[c] += 1 }
  counts.values.sum { |c| c.even? ? c : c - 1 } + (counts.values.any?(&:odd?) ? 1 : 0)
end
