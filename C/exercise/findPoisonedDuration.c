
#include "findPoisonedDuration.h"

int findPoisonedDuration(int* timeSeries, int timeSeriesSize, int duration) {
	int total = duration;
	for (int i = 1; i < timeSeriesSize; i++) {
		int diff = timeSeries[i] - timeSeries[i - 1];
		total += (diff < duration) ? diff : duration;
	}
	return total;
}
