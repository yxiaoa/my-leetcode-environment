export function reversePrefix(s: string, k: number): string {
	let arr = s.split('');
	let left = 0;
	let right = k - 1;
	while (left < right) {
		[arr[left], arr[right]] = [arr[right], arr[left]];
		left++;
		right--;
	}
	return arr.join('');
};
