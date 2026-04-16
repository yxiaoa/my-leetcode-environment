export function findDegrees(matrix: number[][]): number[] {
	const degrees: number[] = Array(matrix.length);
	for (let i = 0; i < matrix.length; i++) {
		degrees[i] = matrix[i].reduce((sum, value) => sum + value, 0);
	}
	return degrees;
};
