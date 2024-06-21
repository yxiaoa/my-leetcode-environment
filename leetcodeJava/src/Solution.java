import java.lang.reflect.Array;
import java.util.*;
import java.text.*;

import static java.lang.Integer.*;

public class Solution {
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
