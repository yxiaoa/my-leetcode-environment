# @param {Integer} x
# @param {Integer} y
# @param {Integer} z
# @return {Integer}
def find_closest(x, y, z)
  d = (x - z).abs <=> (y - z).abs
  (d == 0) ? 0 : (d < 0 ? 1 : 2)
end
