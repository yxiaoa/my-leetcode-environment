class TreeNode {
	val: number
	left: TreeNode | null
	right: TreeNode | null
	constructor(val?: number, left?: TreeNode | null, right?: TreeNode | null) {
		this.val = (val === undefined ? 0 : val)
		this.left = (left === undefined ? null : left)
		this.right = (right === undefined ? null : right)
	}
}

class ListNode {
	val: number
	next: ListNode | null
	constructor(val?: number, next?: ListNode | null);
	constructor(val?: number | number[], next?: ListNode | null) {
		if (typeof val === 'number') {
			this.val = (val === undefined ? 0 : val)
			this.next = (next === undefined ? null : next)
		} else {
			//TODO
		}
	}


}

function insertGreatestCommonDivisors(head: ListNode | null): ListNode | null {
	return head;
};

var input0 = [[18,6,10,3]]
var input1 = [1, 6, 9, 3, 7, 3]
var input2 = [1, 2, 3, 0, 9]
var expect = [[18,6,6,2,10,1,3]]
var optimize_time = false

var fail_cnt = 0
var pass_cnt = 0

console.log("\n")

for (let i = 0; i < input0.length; i++) {
	//var inputTree = new TreeNode(1);
	//inputTree.left = new TreeNode(1);
	//inputTree.right = new TreeNode(1);

	var output = insertGreatestCommonDivisors(input0[i])

	if (expect[i].toString() != output.toString()) {
		fail_cnt++
		console.log(`Test ${i} fail! input ${input0[i]} expect ${expect[i]} actual ${output}`);
	} else {
		pass_cnt++
	}
}

var time_ms = 0
if (optimize_time) {
	var start = performance.now()
	for (let cnt = 0; cnt < 100000; cnt++) {
		for (let i = 0; i < input0.length; i++) {
			var output = insertGreatestCommonDivisors(input0[i])
		}
	}
	var end = performance.now()
	time_ms += end - start
}

console.log("==== Test Summary ====")
console.log(`cost ${time_ms} ms`)
if (fail_cnt == 0) {
	console.log("TEST PASS!")
}
else {
	console.log("TEST FAIL!")
}
console.log("test " + (fail_cnt + pass_cnt))
console.log("pass " + pass_cnt)
console.log("fail " + fail_cnt)
console.log("======================")
