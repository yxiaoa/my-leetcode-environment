package exercise.minimumOperations;

public class Solution {
	public int minimumOperations(int[] nums) {
		int sum = 0;
		for (int n : nums) {
			sum += (n % 3) > 0 ? 1 : 0;
		}
		return sum;
	}
}
