
package exercise.concatWithReverse;

class Solution {
	public int[] concatWithReverse(int[] nums) {
		int n = nums.length;
		int j = 2 * n - 1;
		int[] result = new int[n * 2];
		for (int i = 0; i < n; i++) {
			result[i] = nums[i];
			result[j] = nums[i];
			j--;
		}
		return result;
	}
}
