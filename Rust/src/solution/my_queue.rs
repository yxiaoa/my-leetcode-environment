
pub struct MyQueue {
    stack_in: Vec<i32>,
    stack_out: Vec<i32>,
}

impl MyQueue {

    pub fn new() -> Self {
        MyQueue {
            stack_in: Vec::new(),
            stack_out: Vec::new(),
        }
    }

    pub fn push(&mut self, x: i32) {
        self.stack_in.push(x);
    }

    pub fn pop(&mut self) -> i32 {
        self.move_to_out();
        self.stack_out.pop().unwrap()
    }

    pub fn peek(&mut self) -> i32 {
        self.move_to_out();
        *self.stack_out.last().unwrap()
    }

    pub fn empty(&self) -> bool {
        self.stack_in.is_empty() && self.stack_out.is_empty()
    }

    fn move_to_out(&mut self) {
        if self.stack_out.is_empty() {
            while let Some(val) = self.stack_in.pop() {
                self.stack_out.push(val);
            }
        }
    }
}

//  * Your MyQueue object will be instantiated and called as such:
//  * let obj = MyQueue::new();
//  * obj.push(x);
//  * let ret_2: i32 = obj.pop();
//  * let ret_3: i32 = obj.peek();
//  * let ret_4: bool = obj.empty();
