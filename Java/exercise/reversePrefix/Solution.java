package exercise.reversePrefix;

public class Solution {
	public String reversePrefix(String s, int k) {
		char[] chars = s.toCharArray();
		for (int i = 0; i < (k / 2); i++) {
			int j = (k - 1) - i;
			char temp = chars[i];
			chars[i] = chars[j];
			chars[j] = temp;
		}
		return new String(chars);
	}
}
