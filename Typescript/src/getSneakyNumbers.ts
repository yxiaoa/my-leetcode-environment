export function getSneakyNumbers(nums: number[]): number[] {
	const count = new Map<number, number>();
	let ret = [];
	for (const num of nums) {
		if (1 === count.get(num)) {
			ret.push(num);
		} else {
			count.set(num, 1);
		}
	}
	return ret;
};
