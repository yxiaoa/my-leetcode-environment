export function maxFreqSum(s: string): number {
	const freq = new Array(26).fill(0);
	let maxVowelFreq = 0;
	let maxConsonantFreq = 0;
	const vowels = new Set(['a', 'e', 'i', 'o', 'u']);
	for (const ch of s) {
		const idx = ch.charCodeAt(0) - 97;
		freq[idx]++;
		if (vowels.has(ch)) {
			maxVowelFreq = Math.max(maxVowelFreq, freq[idx]);
		} else {
			maxConsonantFreq = Math.max(maxConsonantFreq, freq[idx]);
		}
	}
	return maxVowelFreq + maxConsonantFreq;
};
