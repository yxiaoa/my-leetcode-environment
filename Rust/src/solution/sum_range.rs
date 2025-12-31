pub struct NumArray {
    nums: Vec<i32>,
}

/**
 * `&self` means the method takes an immutable reference.
 * If you need a mutable reference, change it to `&mut self` instead.
 */
impl NumArray {
    pub fn new(nums: Vec<i32>) -> Self {
        NumArray { nums }
    }

    pub fn sum_range(&self, left: i32, right: i32) -> i32 {
        self.nums[left as usize..=right as usize].iter().sum()
    }
}
