export function countPoints(points: number[][], queries: number[][]): number[] {
	let res: number[] = [];
	for (let q of queries) {
		let cnt = 0;
		for (let p of points) {
			let dist = (p[0] - q[0]) ** 2 + (p[1] - q[1]) ** 2;
			if (dist <= q[2] ** 2) {
				cnt += 1;
			}
		}
		res.push(cnt);
	}
	return res;
};
