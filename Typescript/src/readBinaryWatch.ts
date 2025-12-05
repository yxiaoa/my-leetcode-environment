export function readBinaryWatch(turnedOn: number): string[] {
	const result: string[] = [];

	const countBits = (n: number): number => {
		let count = 0;
		while (n > 0) {
			count += n & 1;
			n >>= 1;
		}
		return count;
	};

	for (let hour = 0; hour < 12; hour++) {
		for (let minute = 0; minute < 60; minute++) {
			if (countBits(hour) + countBits(minute) === turnedOn) {
				const timeString = `${hour}:${minute.toString().padStart(2, '0')}`;
				result.push(timeString);
			}
		}
	}

	return result;
};
