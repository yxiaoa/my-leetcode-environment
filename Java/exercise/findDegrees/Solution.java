package exercise.findDegrees;

public class Solution {
	public int[] findDegrees(int[][] matrix) {
		int[] degrees = new int[matrix[0].length];
		for (int j = 0; j < matrix[0].length; j++) {
			for (int i = 0; i < matrix.length; i++) {
				degrees[j] += matrix[i][j];
			}
		}
		return degrees;
	}
}
