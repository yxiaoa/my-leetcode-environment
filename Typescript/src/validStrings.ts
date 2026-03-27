export function validStrings(n: number): string[] {
	const result: string[] = [];

	const build = (index: number, current: string, previousWasZero: boolean): void => {
		if (index === n) {
			result.push(current);
			return;
		}
		if (!previousWasZero) {
			build(index + 1, current + "0", true);
		}
		build(index + 1, current + "1", false);
	};
	build(0, "", false);

	return result;
};
