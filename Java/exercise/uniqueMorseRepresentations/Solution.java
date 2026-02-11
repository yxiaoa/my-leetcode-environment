package exercise.uniqueMorseRepresentations;

public class Solution {
	public int uniqueMorseRepresentations(String[] words) {
		String[] morse = { ".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---", "-.-", ".-..",
				"--", "-.", "---", ".--.", "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-",
				"-.--",
				"--.." };
		java.util.Set<String> set = new java.util.HashSet<>();
		for (String word : words) {
			StringBuilder sb = new StringBuilder();
			for (char c : word.toCharArray()) {
				sb.append(morse[c - 'a']);
			}
			set.add(sb.toString());
		}
		return set.size();
	}
}
