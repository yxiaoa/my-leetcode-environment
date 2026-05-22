
package exercise.RecentCounter;

public class RecentCounter {

	private int[] times = new int[10002];
	private int head = 0;
	private int tail = 0;

	public RecentCounter() {

	}

	public int ping(int t) {
		times[tail] = t;
		tail++;
		while (times[head] < t - 3000) {
			head++;
		}
		return tail - head;
	}
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * RecentCounter obj = new RecentCounter();
 * int param_1 = obj.ping(t);
 */
