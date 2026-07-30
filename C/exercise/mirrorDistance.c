
#include "mirrorDistance.h"

int mirrorDistance(int n)
{
	int rev = 0;
	int ori = n;
	while (ori > 0) {
		rev = (rev * 10) + (ori % 10);
		ori /= 10;
	}
	return (rev > n) ? (rev - n) : (n - rev);
}
