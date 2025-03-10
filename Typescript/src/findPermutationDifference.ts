export function findPermutationDifference(s: string, t: string): number {
	return t.split('').reduce((acc, cur, i) => acc + Math.abs(s.indexOf(cur) - i), 0);
};
