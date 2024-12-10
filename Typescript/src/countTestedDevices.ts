export function countTestedDevices(batteryPercentages: number[]): number {
	return batteryPercentages.reduce((cnt, b) => b > cnt ? cnt + 1 : cnt, 0);
};
