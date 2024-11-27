/**
 * Given an integer array nums, return the maximum possible sum of elements of the array such that it is divisible by three.
 *
 * Constraints:
 * 1 <= nums.length <= 4 * 104
 * 1 <= nums[i] <= 104
 */

export function maxSumDivThree(nums: number[]): number {
	const dp = new Array(3).fill(0);
	for (let num of nums) {
		const dp2 = dp.slice();
		for (let sum of dp2) {
			dp[(sum + num) % 3] = Math.max(dp[(sum + num) % 3], sum + num);
		}
	}
	return dp[0];
};
