package exercise.minimumChairs;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_minimumChairs() {
		String[] input0 = { "EEEEEEE", "ELELEEL", "ELEELEELLL" };
		int[] expect = { 7, 2, 3 };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.minimumChairs(input0[i]));
		}
	}
}
