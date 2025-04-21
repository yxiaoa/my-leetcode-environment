export function minimumChairs(s: string): number {
	let max = 0;
	let cur = 0;
	for (const c of s) {
		cur += (c === 'E') ? 1 : -1;
		max = Math.max(max, cur);
	}
	return max;
};
