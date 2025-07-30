package exercise.reverseDegree;

public class Solution {
	public int reverseDegree(String s) {
		int prod = 0;
		for (int i = 0; i < s.length(); i++) {
			prod += (26 - s.charAt(i) + 'a') * (i + 1);
		}
		return prod;
	}
}
