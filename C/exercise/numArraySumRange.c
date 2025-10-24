
#include "numArraySumRange.h"
#include <string.h>

NumArray* numArrayCreate(int* nums, int numsSize) {
	NumArray* obj = (NumArray*)malloc(sizeof(NumArray));
	if (obj == NULL) {
		return NULL;
	}
	obj->data = (int*)malloc(sizeof(int) * numsSize);
	if (obj->data == NULL) {
		(void)free(obj);
		return NULL;
	}
	memcpy(obj->data, nums, sizeof(int) * numsSize);
	obj->size = numsSize;
	return obj;
}

int numArraySumRange(NumArray* obj, int left, int right) {
	if ((obj == NULL) || (left < 0) || (right >= obj->size) || (left > right)) {
		return 0;
	}
	int sum = 0;
	for (int i = left; i <= right; i++) {
		sum += obj->data[i];
	}
	return sum;
}

void numArrayFree(NumArray* obj) {
	if (obj != NULL) {
		free(obj->data);
		free(obj);
	}
}

/**
 * Your NumArray struct will be instantiated and called as such:
 * NumArray* obj = numArrayCreate(nums, numsSize);
 * int param_1 = numArraySumRange(obj, left, right);

 * numArrayFree(obj);
*/
