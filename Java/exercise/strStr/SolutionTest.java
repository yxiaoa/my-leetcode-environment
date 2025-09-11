package exercise.strStr;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_strStr() {
		String[] input0 = { "sadbutsad", "leetcode" };
		String[] input1 = { "sad", "leeto" };
		int[] expect = { 0, -1 };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.strStr(input0[i], input1[i]));
		}
	}
}
