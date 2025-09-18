export function isBalanced(num: string): boolean {
	let even = 0;
	let odd = 0;
	for (let i = 0; i < num.length; i += 2) {
		even += parseInt(num.charAt(i));
	}
	for (let i = 1; i < num.length; i += 2) {
		odd += parseInt(num.charAt(i));
	}
	return even === odd;
};
