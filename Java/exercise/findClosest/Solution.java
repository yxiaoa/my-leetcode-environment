package exercise.findClosest;

public class Solution {
	public int findClosest(int x, int y, int z) {
		int d = Math.abs(x - z) - Math.abs(y - z);
		if (d < 0) {
			return 1;
		} else if (d > 0) {
			return 2;
		} else {
			return 0;
		}
	}
}
