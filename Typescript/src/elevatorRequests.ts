export function elevatorRequests(n: number, requests: number[]): number {
	let sum = requests[0];
	for (let i = 1; i < requests.length; i++) {
		sum += Math.abs(requests[i] - requests[i - 1]);
	}
	return sum;
};
