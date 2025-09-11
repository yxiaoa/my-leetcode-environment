package exercise.longestPalindrome;

public class Solution {
	public int longestPalindrome(String s) {
		int[] map = new int[58];
		int sum = 0;
		int res = 0;
		for (char c : s.toCharArray()) {
			map[c - 'A']++;
		}
		for (int i = 0; i < map.length; i++) {
			sum += map[i] & ~1;
			res |= map[i] & 1;
		}
		return sum + res;
	}
}
