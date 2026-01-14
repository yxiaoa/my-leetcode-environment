package exercise.findPermutationDifference;

public class Solution {
	public int findPermutationDifference(String s, String t) {
		int sum = 0;
		int map[] = new int[26];
		for (int i = 0; i < s.length(); i++) {
			map[s.charAt(i) - 'a'] = i;
		}
		for (int i = 0; i < t.length(); i++) {
			sum += Math.abs(map[t.charAt(i) - 'a'] - i);
		}
		return sum;
	}
}
