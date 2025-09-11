package exercise.removeTrailingZeros;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class SolutionTest {
	@Test
	public void test_removeTrailingZeros() {
		String[] input0 = { "51230100", "123" };
		String[] expect = { "512301", "123" };
		Solution sln = new Solution();
		for (int i = 0; i < input0.length; i++) {
			assertEquals(expect[i], sln.removeTrailingZeros(input0[i]));
		}
	}
}
