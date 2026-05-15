export function concatWithReverse(nums: number[]): number[] {
	return nums.concat(nums.slice().reverse());
};
