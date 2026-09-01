export function minimumOperations(nums: number[]): number {
	return nums.filter(num => (num % 3) !== 0).length;
};
