class MyQueue {
  var stackIn = [];
  var stackOut = [];

  MyQueue();

  void push(int x) {
	stackIn.add(x);
  }

  int pop() {
	if (stackOut.isEmpty) {
	  while (stackIn.isNotEmpty) {
		stackOut.add(stackIn.removeLast());
	  }
	}
	return stackOut.removeLast();
  }

  int peek() {
	if (stackOut.isEmpty) {
	  while (stackIn.isNotEmpty) {
		stackOut.add(stackIn.removeLast());
	  }
	}
	return stackOut.last;
  }

  bool empty() {
	return stackIn.isEmpty && stackOut.isEmpty;
  }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * MyQueue obj = MyQueue();
 * obj.push(x);
 * int param2 = obj.pop();
 * int param3 = obj.peek();
 * bool param4 = obj.empty();
 */
