mod solution;

fn main() {
    let input0 = ["egcfe", "abcd", "seven"];
    let input1 = [34];
    let expect = ["efcfe", "abba", "neven"];

    let mut fail_cnt = 0;
    let input_size = input0.len();

//    single input and output
//    let output = solution::Solution::count_pairs(input, input2);
//    if output != expect {
//        fail_cnt += 1;
//        println!("Test fail: expect {} actual {}", expect, output);
//    }

    for i in 0..input_size {
        //let input_string = input0[i].iter().map(|s| s.to_string()).collect();
        let output = solution::Solution::make_smallest_palindrome(String::from(input0[i]));

        if output != expect[i] {
            fail_cnt += 1;
            println!("Test {} fail: expect {} actual {}", i, expect[i], output);
        }

	//if output.len() != expect[i].len() {
	//	println!("Test {} fail: expect len {} actual {}", i, expect[i].len(), output.len());
	//	fail_cnt += 1;
	//} else {
	//	for j in 0..output.len() {
	//		if output[j] != expect[i][j] {
	//			println!("Test {} fail: element {} expect {} actual {}",i, j, expect[i][j], output[j]);
	//			fail_cnt += 1;
	//			break;
	//		}
	//	}
	//}
    }
    println!("==== Test Summary ====");
    if fail_cnt == 0 {
        println!("TEST PASS!");
    } else {
        println!("TEST FAIL!");
    }
    println!("test {input_size}");
    println!("pass {}", input_size - fail_cnt);
    println!("fail {fail_cnt}");
    println!("======================");
}
