package exercise.readBinaryWatch;

import static org.junit.Assert.assertArrayEquals;
import java.util.List;
import org.junit.Test;

public class SolutionTest {
	@Test
	public void test_example_1() {
		int input = 1;
		String[] expect = { "0:01", "0:02", "0:04", "0:08", "0:16", "0:32", "1:00", "2:00", "4:00", "8:00" };
		Solution sln = new Solution();
		List<String> output = sln.readBinaryWatch(input);
		assertArrayEquals(expect, output.toArray(new String[0]));
	}

	@Test
	public void test_example_2() {
		int input = 9;
		String[] expect = {};
		Solution sln = new Solution();
		List<String> output = sln.readBinaryWatch(input);
		assertArrayEquals(expect, output.toArray(new String[0]));
	}
}
