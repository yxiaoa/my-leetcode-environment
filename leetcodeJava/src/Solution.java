import java.lang.reflect.Array;
import java.util.*;
import java.text.*;

import static java.lang.Integer.*;

public class Solution {
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
