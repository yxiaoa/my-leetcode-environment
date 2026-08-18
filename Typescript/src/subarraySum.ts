export function subarraySum(nums: number[]): number {
	let prefixSum: number[] = new Array(nums.length + 1).fill(0);
	for (let i = 0; i < nums.length; i++) {
		prefixSum[i + 1] = prefixSum[i] + nums[i];
	}
	let totalSum = 0;
	for (let i = 0; i < nums.length; i++) {
		let start = Math.max(0, i - nums[i]);
		totalSum += prefixSum[i + 1] - prefixSum[start];
	}
	return totalSum;
};
