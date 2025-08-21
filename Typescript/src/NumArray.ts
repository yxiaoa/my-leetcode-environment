export class NumArray {
	private readonly arr: number[] = [];
	constructor(nums: number[]) {
		this.arr = nums;
	}
	sumRange(left: number, right: number): number {
		let sum = 0;
		for (let i = left; i <= right; i++) {
			sum += this.arr[i];
		}
		return sum;
	}
}

/**
 * Your NumArray object will be instantiated and called as such:
 * var obj = new NumArray(nums)
 * var param_1 = obj.sumRange(left,right)
 */
