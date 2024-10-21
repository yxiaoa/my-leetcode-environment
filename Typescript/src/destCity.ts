export function destCity(paths: string[][]): string {
	let ret = "";
	let start = new Set<string>();
	for (const path of paths) {
		start.add(path[0]);
	}
	for (const path of paths) {
		if (!start.has(path[1])) {
			ret = path[1];
			break;
		}
	}
	return ret;
};
