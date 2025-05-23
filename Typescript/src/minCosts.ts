export function minCosts(cost: number[]): number[] {
	let min = cost[0];
	let minCosts = Array(cost.length);
	minCosts[0] = min;
	for (let i = 1; i < cost.length; i++) {
		if (cost[i] < min) {
			min = cost[i];
		}
		minCosts[i] = min;
	}
	return minCosts;
};
