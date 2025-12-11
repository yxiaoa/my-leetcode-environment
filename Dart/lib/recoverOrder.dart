class Solution {
  List<int> recoverOrder(List<int> order, List<int> friends) {
    Set<int> friendSet = friends.toSet();
    return order.where((id) => friendSet.contains(id)).toList();
  }
}
