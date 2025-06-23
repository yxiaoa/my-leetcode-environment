export function reverseDegree(s: string): number {
	return s.split('').reduce((sum, char, i) =>
		sum + (26 - char.charCodeAt(0) + 'a'.charCodeAt(0)) * (i + 1), 0);
};
