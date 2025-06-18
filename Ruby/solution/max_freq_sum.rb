# @param {String} s
# @return {Integer}
def max_freq_sum(s)
  freq = Hash.new(0)
  max_vowel = 0
  max_consonant = 0
  s.each_char do |c|
    freq[c] += 1
    if "aeiou".include?(c)
      max_vowel = [max_vowel, freq[c]].max
    else
      max_consonant = [max_consonant, freq[c]].max
    end
  end
  max_vowel + max_consonant
end
