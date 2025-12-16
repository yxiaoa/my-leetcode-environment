# @param {Integer[]} order
# @param {Integer[]} friends
# @return {Integer[]}
def recover_order(order, friends)
  order.select { |item| friends.include?(item) }
end
