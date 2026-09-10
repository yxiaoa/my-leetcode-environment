# @param {Integer} n
# @param {Integer[]} requests
# @return {Integer}
def elevator_requests(n, requests)
  requests.unshift(0).each_cons(2).sum { |a, b| (a - b).abs }
end
