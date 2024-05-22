use core::num;
use std::borrow::{Borrow, BorrowMut};
use std::cell::RefCell;
use std::rc::Rc;

pub struct Solution {}

#[derive(Debug, PartialEq, Eq)]
pub struct TreeNode {
    pub val: i32,
    pub left: Option<Rc<RefCell<TreeNode>>>,
    pub right: Option<Rc<RefCell<TreeNode>>>,
}

impl TreeNode {
    #[inline]
    pub fn new(val: i32) -> Self {
        TreeNode {
            val,
            left: None,
            right: None,
        }
    }
}

impl Solution {
	pub fn make_smallest_palindrome(s: String) -> String {
		let mut chars = s.into_bytes();
		let mut i = 0;
		let mut j = chars.len() - 1;
		while i < j {
		    if chars[i] > chars[j] {
			chars[i] = chars[j];
		    } else {
			chars[j] = chars[i];
		    }
		    i += 1;
		    j -= 1;
		}
		return String::from_utf8(chars).unwrap();
	}
}
