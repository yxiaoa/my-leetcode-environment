package exercise.sumIndicesWithKSetBits;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
import java.util.Arrays;

public class SolutionTest {
	@Test
	public void test_sumIndicesWithKSetBits() {
		Integer[][] input0 = { { 5, 10, 1, 5, 2 }, { 4, 3, 2, 1 } };
		int[] input1 = { 1, 2 };
		int[] expect = { 13, 1 };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.sumIndicesWithKSetBits(Arrays.asList(input0[i]), input1[i]));
		}
	}
}
