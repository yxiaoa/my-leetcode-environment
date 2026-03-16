
#ifndef RECENTCOUNTER_H
#define RECENTCOUNTER_H

#define MAX_SIZE 10002

typedef struct {
	int head;
	int tail;
	int times[MAX_SIZE];
} RecentCounter;

RecentCounter *recentCounterCreate(void);
int recentCounterPing(RecentCounter *obj, int t);
void recentCounterFree(RecentCounter *obj);

/**
 * Your RecentCounter struct will be instantiated and called as such:
 * RecentCounter* obj = recentCounterCreate();
 * int param_1 = recentCounterPing(obj, t);

 * recentCounterFree(obj);
*/

#endif   // RECENTCOUNTER_H
