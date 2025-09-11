package exercise.findIntersectionValues;

import java.util.*;

public class Solution {
	public int[] findIntersectionValues(int[] nums1, int[] nums2) {
		int cnt1 = 0;
		int cnt2 = 0;
		Set<Integer> set1 = new HashSet<>();
		Set<Integer> set2 = new HashSet<>();
		for (int n : nums1) {
			set1.add(n);
		}
		for (int n : nums2) {
			set2.add(n);
		}
		for (int n : nums1) {
			if (set2.contains(n)) {
				cnt1++;
			}
		}
		for (int n : nums2) {
			if (set1.contains(n)) {
				cnt2++;
			}
		}
		return new int[] { cnt1, cnt2 };
	}
}
