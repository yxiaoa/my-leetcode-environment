
#ifndef NUMARRAYSUMRANGE_H
#define NUMARRAYSUMRANGE_H

typedef struct {
	int *data;
	int size;
} NumArray;

NumArray *numArrayCreate(int *nums, int numsSize);

int numArraySumRange(NumArray *obj, int left, int right);

void numArrayFree(NumArray *obj);

#endif // NUMARRAYSUMRANGE_H
