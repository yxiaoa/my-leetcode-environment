## Environment Setup

### Rust

#### Run

1. Install the rust-analyzer extension
2. Create Project
   - cargo new hello_world
3. Build
	- cargo build
	- cargo build --release
		- 使用 release 编译会比默认的 debug 编译性能提升 10 倍以上，但是 release 缺点是编译速度较慢，而且不会显示 panic backtrace 的具体行号
	- 程序位置 target\debug\hello_world.exe
4. cargo run or directly run .exe
5. IntelliSense
	- 状态栏rust-analyzer在运行即可

#### Debug

(Ctrl+Shift+P)Rust Analyzer: Debug command 
或者在函数弹出菜单里选择Debug

#### Unit test

1. cargo test <test_name>

#### Format & Lint

The Rust toolset includes a formatter, rustfmt
Shift+Alt+F or by running the Format Document command from the Command Palette or the context menu in the editor
cargo fmt 未尝试

The Rust toolset includes linting, provided by rustc and clippy
Rust-analyzer > Check: Command (rust-analyzer.check.command) setting to clippy instead of the default check
