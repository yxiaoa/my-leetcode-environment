package exercise.elevatorRequests;

public class Solution {
	public int elevatorRequests(int n, int[] requests) {
		int total = requests[0];
		for (int i = 1; i < requests.length; i++) {
			total += Math.abs(requests[i] - requests[i - 1]);
		}
		return total;
	}
}
