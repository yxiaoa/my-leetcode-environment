package exercise.shortestToChar;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_shortestToChar() {
		String[] input0 = { "loveleetcode", "aaab", "aaba" };
		char[] input1 = { 'e', 'b', 'b' };
		int[][] expect = { { 3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0 }, { 3, 2, 1, 0 }, { 2, 1, 0, 1 } };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertArrayEquals(expect[i], sln.shortestToChar(input0[i], input1[i]));
		}
	}
}
