# @param {String[]} words
# @return {Integer}
def unique_morse_representations(words)
  morse = [".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---",
           "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-",
           "..-", "...-", ".--", "-..-", "-.--", "--.."]
  words.map { |w| w.chars.map { |c| morse[c.ord - "a".ord] }.join }.uniq.size
end
