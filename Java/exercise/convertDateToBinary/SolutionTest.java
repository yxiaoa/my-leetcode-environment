package exercise.convertDateToBinary;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_convertDateToBinary() {
		String[] input0 = { "2080-02-29", "1900-01-01" };
		String[] expect = { "100000100000-10-11101", "11101101100-1-1" };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.convertDateToBinary(input0[i]));
		}
	}
}
