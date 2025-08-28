package exercise.canAliceWin;

public class Solution {
	public boolean canAliceWin(int[] nums) {
		int sum = 0;
		for (int i = 0; i < nums.length; i++) {
			sum += (nums[i] < 10) ? nums[i] : -nums[i];
		}
		return sum != 0;
	}
}
