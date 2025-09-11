package exercise.subarraySum;

public class Solution {
	public int subarraySum(int[] nums) {
		int[] prefix = new int[nums.length + 1];
		for (int i = 0; i < nums.length; i++) {
			prefix[i + 1] = prefix[i] + nums[i];
		}
		int sum = 0;
		for (int i = 0; i < nums.length; i++) {
			int start = Math.max(0, i - nums[i]);
			sum += prefix[i + 1] - prefix[start];
		}
		return sum;
	}
}
