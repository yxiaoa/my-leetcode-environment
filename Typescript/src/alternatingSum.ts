export function alternatingSum(nums: number[]): number {
	return nums.reduce((sum, val, idx) => (idx % 2 === 0) ? sum + val : sum - val, 0);
}
