export function findIntersectionValues(nums1: number[], nums2: number[]): number[] {
	return [nums1.filter(num => nums2.includes(num)).length, nums2.filter(num => nums1.includes(num)).length];
};
