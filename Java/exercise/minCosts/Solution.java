package exercise.minCosts;

public class Solution {
	public int[] minCosts(int[] cost) {
		int minCost = cost[0];
		int[] res = new int[cost.length];
		res[0] = minCost;
		for (int i = 1; i < cost.length; i++) {
			minCost = Math.min(minCost, cost[i]);
			res[i] = minCost;
		}
		return res;
	}
}
