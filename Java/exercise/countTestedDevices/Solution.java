package exercise.countTestedDevices;

public class Solution {
	public int countTestedDevices(int[] batteryPercentages) {
		int cnt = 0;
		for (int b : batteryPercentages) {
			cnt = (b > cnt) ? (cnt + 1) : cnt;
		}
		return cnt;
	}
}
