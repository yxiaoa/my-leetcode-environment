package exercise.findPoisonedDuration;

public class Solution {
	public int findPoisonedDuration(int[] timeSeries, int duration) {
		int sum = duration;
		for (int i = 0; i < timeSeries.length - 1; i++) {
			sum += Math.min(duration, timeSeries[i + 1] - timeSeries[i]);
		}
		return sum;
	}
}
