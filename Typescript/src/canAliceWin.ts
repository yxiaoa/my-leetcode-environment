export function canAliceWin(nums: number[]): boolean {
	return nums.reduce((sum, num) => sum + ((num < 10) ? num : -num), 0) !== 0;
};
