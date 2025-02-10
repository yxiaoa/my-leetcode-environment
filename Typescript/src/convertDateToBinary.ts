export function convertDateToBinary(date: string): string {
	let dateArray = date.split('-');
	let [year, month, day] = dateArray.map(part => parseInt(part).toString(2));
	return `${year}-${month}-${day}`;
};
