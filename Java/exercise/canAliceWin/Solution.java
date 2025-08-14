package exercise.canAliceWin;

public class Solution {
	public boolean canAliceWin(int[] nums) {
		int sum = 0;
		int sumSingle = 0;
		for (int i = 0; i < nums.length; i++) {
			sum += nums[i];
			if (nums[i] < 10) {
				sumSingle += nums[i];
			}
		}
		return sum != (sumSingle * 2);
	}
}
