export function digitFrequencyScore(n: number): number {
	const digitCount: { [key: string]: number } = {};
	const digits = n.toString().split('');
	for (const digit of digits) {
		digitCount[digit] = (digitCount[digit] || 0) + 1;
	}
	let score = 0;
	for (const digit in digitCount) {
		const count = digitCount[digit];
		score += parseInt(digit) * count;
	}
	return score;
};
