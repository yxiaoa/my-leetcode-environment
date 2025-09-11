package exercise.hasGroupsSizeX;

import java.util.*;

public class Solution {
	private int gcd(int a, int b) {
		while (b != 0) {
			int t = b;
			b = a % b;
			a = t;
		}
		return a;
	}

	public boolean hasGroupsSizeX(int[] deck) {
		Map<Integer, Integer> map = new HashMap<>();
		for (int n : deck) {
			map.put(n, map.getOrDefault(n, 0) + 1);
		}
		int gcd = 0;
		for (int count : map.values()) {
			gcd = gcd(gcd, count);
			if (gcd == 1) {
				return false;
			}
		}
		return true;
	}
}
