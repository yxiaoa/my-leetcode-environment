package exercise.RecentCounter;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class RecentCounterTest {
	@Test
	public void testExample() {
		String[] input0 = { "RecentCounter", "ping", "ping", "ping", "ping" };
		int[][] input1 = { {}, { 1 }, { 100 }, { 3001 }, { 3002 } };
		int[] expect = { 0, 1, 2, 3, 3 };
		RecentCounter sln = new RecentCounter();
		for (int i = 0; i < input0.length; i++) {
			switch (input0[i]) {
				case "RecentCounter":
					sln = new RecentCounter();
					break;
				case "ping":
					assertEquals(expect[i], sln.ping(input1[i][0]));
					break;
			}
		}
	}
}
