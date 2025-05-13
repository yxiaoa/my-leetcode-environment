
#include "findClosest.h"

int findClosest(int x, int y, int z)
{
	int a = (x > z) ? x - z : z - x;
	int b = (y > z) ? y - z : z - y;
	int c = a - b;
	if (c < 0) {
		return 1;
	}
	if (c > 0) {
		return 2;
	}
	return 0;
}
