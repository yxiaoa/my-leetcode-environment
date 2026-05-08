package exercise.sortTheStudents;

public class Solution {
	public int[][] sortTheStudents(int[][] score, int k) {
		java.util.Arrays.sort(score, (a, b) -> Integer.compare(b[k], a[k]));
		return score;
	}
}
