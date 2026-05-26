# @param {String[][]} paths
# @return {String}
def dest_city(paths)
  out_cities = paths.map(&:first).to_set
  in_cities = paths.map(&:last).to_set
  (in_cities - out_cities).first
end
