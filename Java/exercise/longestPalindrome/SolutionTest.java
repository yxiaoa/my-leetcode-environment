package exercise.longestPalindrome;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_longestPalindrome() {
		String[] input0 = { "abccccdd", "a", "AAAAAA" };
		int[] expect = { 7, 1, 6 };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.longestPalindrome(input0[i]));
		}
	}
}
