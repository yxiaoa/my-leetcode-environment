package exercise.maxFreqSum;

public class Solution {
	public int maxFreqSum(String s) {
		int[] freq = new int[26];
		int maxVowel = 0;
		int maxConsonant = 0;
		for (char c : s.toCharArray()) {
			freq[c - 'a']++;
			if ("aeiou".indexOf(c) >= 0) {
				maxVowel = Math.max(maxVowel, freq[c - 'a']);
			} else {
				maxConsonant = Math.max(maxConsonant, freq[c - 'a']);
			}
		}
		return maxVowel + maxConsonant;
	}
}
