export function shortestToChar(s: string, c: string): number[] {
	const n = s.length;
	const result: number[] = new Array(n).fill(Infinity);

	let prev = -Infinity;
	for (let i = 0; i < n; i++) {
		if (s[i] === c) {
			prev = i;
		}
		result[i] = Math.min(result[i], i - prev);
	}

	prev = Infinity;
	for (let i = n - 1; i >= 0; i--) {
		if (s[i] === c) {
			prev = i;
		}
		result[i] = Math.min(result[i], prev - i);
	}

	return result;
};
