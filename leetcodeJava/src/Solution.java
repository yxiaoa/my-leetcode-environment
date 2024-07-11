import java.lang.reflect.Array;
import java.util.*;
import java.text.*;

import static java.lang.Integer.*;

public class Solution {
	private int HammingWeight(int n) {
		n = (n & 0x55555555) + ((n >> 1) & 0x55555555);
		n = (n & 0x33333333) + ((n >> 2) & 0x33333333);
		n = (n & 0x0f0f0f0f) + ((n >> 4) & 0x0f0f0f0f);
		n = (n & 0x00ff00ff) + ((n >> 8) & 0x00ff00ff);
		n = (n & 0x0000ffff) + ((n >> 16) & 0x0000ffff);
		return n;
	}

	public int sumIndicesWithKSetBits(List<Integer> nums, int k) {
		int sum = 0;
		for (int i = 0; i < nums.size(); i++) {
			if (HammingWeight(i) == k) {
				sum += nums.get(i);
			}
		}
		return sum;
	}

	public int minimumOperations(int[] nums) {
		int sum = 0;
		for (int n : nums) {
			sum += (n % 3) > 0 ? 1 : 0;
		}
		return sum;
	}

	public int minimumChairs(String s) {
		int cnt = 0;
		int max = 0;
		for (char c : s.toCharArray()) {
			if (c == 'E') {
				cnt++;
				max = Math.max(max, cnt);
			} else {
				cnt--;
			}
		}
		return max;
	}

	public int strStr(String haystack, String needle) {
		return haystack.indexOf(needle);
	}

	public int countTestedDevices(int[] batteryPercentages) {
		int cnt = 0;
		for (int b : batteryPercentages) {
			cnt = (b > cnt) ? (cnt + 1) : cnt;
		}
		return cnt;
	}

	public int maximumNumberOfStringPairs(String[] words) {
		Set<String> map = new HashSet<>();
		int cnt = 0;
		for (String w : words) {
			if (map.contains(w)) {
				cnt++;
			} else {
				map.add(new String(new char[] { w.charAt(1), w.charAt(0) }));
			}
		}
		return cnt;
	}
}
