export function mapWordWeights(words: string[], weights: number[]): string {
	return words
		.map((word) =>
			String.fromCharCode(
				'a'.charCodeAt(0) +
				25 -
				(word.split('').reduce((sum, char) => sum + weights[char.charCodeAt(0) - 97], 0) % 26)
			)
		)
		.join('');
};
