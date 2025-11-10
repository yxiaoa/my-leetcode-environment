
#include "alternatingSum.h"

int alternatingSum(int* nums, int numsSize) {
	int sum = 0;
	for (int i = 0; i < numsSize; i += 2) {
		sum += nums[i];
	}
	for (int i = 1; i < numsSize; i += 2) {
		sum -= nums[i];
	}
	return sum;
}
