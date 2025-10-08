export function uniqueMorseRepresentations(words: string[]): number {
	const morseCode: string[] = [".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---", "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-", "-.--", "--.."];
	const transformations: Set<string> = new Set();
	for (let word of words) {
		let transformation = '';
		for (let char of word) {
			transformation += morseCode[char.charCodeAt(0) - 'a'.charCodeAt(0)];
		}
		transformations.add(transformation);
	}
	return transformations.size;
};
