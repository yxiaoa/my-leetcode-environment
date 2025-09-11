package exercise.countPoints;

public class Solution {
	public int[] countPoints(int[][] points, int[][] queries) {
		int[] res = new int[queries.length];
		for (int i = 0; i < queries.length; i++) {
			int x = queries[i][0];
			int y = queries[i][1];
			int r = queries[i][2];
			for (int j = 0; j < points.length; j++) {
				if ((points[j][0] - x) * (points[j][0] - x)
						+ (points[j][1] - y) * (points[j][1] - y) <= r * r) {
					res[i]++;
				}
			}
		}
		return res;
	}
}
