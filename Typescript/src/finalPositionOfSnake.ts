export function finalPositionOfSnake(n: number, commands: string[]): number {
	let x = 0;
	let y = 0;
	for (const e of commands) {
		switch (e) {
			case "UP":
				x--;
				break;
			case "DOWN":
				x++;
				break;
			case "LEFT":
				y--;
				break;
			case "RIGHT":
				y++;
				break;
		}
	}
	return x * n + y;
};
