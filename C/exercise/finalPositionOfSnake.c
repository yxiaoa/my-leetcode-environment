
#include "finalPositionOfSnake.h"

int finalPositionOfSnake(int n, char** commands, int commandsSize) {
	int x = 0, y = 0;
	for (int i = 0; i < commandsSize; i++) {
		if (commands[i][0] == 'U') {
			x--;
		} else if (commands[i][0] == 'D') {
			x++;
		} else if (commands[i][0] == 'L') {
			y--;
		} else if (commands[i][0] == 'R') {
			y++;
		} else {
			// Invalid command
		}
	}
	return (x * n) + y;
}
