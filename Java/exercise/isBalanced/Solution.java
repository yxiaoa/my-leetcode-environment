package exercise.isBalanced;

public class Solution {
	public boolean isBalanced(String num) {
		int left = 0;
		int right = 0;
		int length = num.length();
		for (int i = 0; i < length; i += 2) {
			left += Character.getNumericValue(num.charAt(i));
		}
		for (int i = 1; i < length; i += 2) {
			right += Character.getNumericValue(num.charAt(i));
		}
		return left == right;
	}
}
