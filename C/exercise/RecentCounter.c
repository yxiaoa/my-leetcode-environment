
#include "RecentCounter.h"
#include <stdlib.h>

RecentCounter *recentCounterCreate()
{
	RecentCounter *obj = (RecentCounter *)malloc(sizeof(RecentCounter));
	obj->head = 0;
	obj->tail = 0;
	return obj;
}

int recentCounterPing(RecentCounter *obj, int t)
{
	obj->times[obj->tail] = t;
	obj->tail++;
	if (obj->tail >= MAX_SIZE) {
		obj->tail = 0;
	}
	while (obj->times[obj->head] < (t - 3000)) {
		obj->head++;
		if (obj->head >= MAX_SIZE) {
			obj->head = 0;
		}
	}
	return obj->tail - obj->head;
}

void recentCounterFree(RecentCounter *obj)
{
	free(obj);
}

/**
 * Your RecentCounter struct will be instantiated and called as such:
 * RecentCounter* obj = recentCounterCreate();
 * int param_1 = recentCounterPing(obj, t);

 * recentCounterFree(obj);
*/
