# @param {Integer[]} deck
# @return {Boolean}
def has_groups_size_x(deck)
  counts = Hash.new(0)
  deck.each { |card| counts[card] += 1 }
  counts.values.reduce { |a, b| a.gcd(b) } >= 2
end
