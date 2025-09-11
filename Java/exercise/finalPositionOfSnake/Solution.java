package exercise.finalPositionOfSnake;

import java.util.*;

public class Solution {
	public int finalPositionOfSnake(int n, List<String> commands) {
		int pos = 0;
		for (String command : commands) {
			switch (command) {
				case "UP":
					pos -= n;
					break;
				case "DOWN":
					pos += n;
					break;
				case "LEFT":
					pos--;
					break;
				default:
					pos++;
					break;
			}
		}
		return pos;
	}
}
