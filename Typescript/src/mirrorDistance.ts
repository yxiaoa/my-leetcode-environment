export function mirrorDistance(n: number): number {
	const reverse_n = parseInt(n.toString().split('').reverse().join(''));
	return Math.abs(n - reverse_n);
};
