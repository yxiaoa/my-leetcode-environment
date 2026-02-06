
#include "canAliceWin.h"

bool canAliceWin(int *nums, int numsSize)
{
	int sum = 0;
	for (int i = 0; i < numsSize; i++) {
		sum += (nums[i] < 10) ? nums[i] : -nums[i];
	}
	return sum != 0;
}
