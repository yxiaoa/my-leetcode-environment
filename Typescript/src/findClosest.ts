export function findClosest(x: number, y: number, z: number): number {
	let a = Math.abs(x - z) - Math.abs(y - z);
	if (a < 0) {
		return 1;
	} else if (a > 0) {
		return 2;
	} else {
		return 0;
	}
};
