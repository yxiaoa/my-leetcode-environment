# @param {Integer[]} cost
# @return {Integer[]}
def min_costs(cost)
  n = cost.length
  costs = Array.new(n, 0)
  min_cost = cost[0]
  cost.each_with_index do |c, i|
    min_cost = [min_cost, c].min
    costs[i] = min_cost
  end
  costs
end
