# leetcode

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Environment Setup

### Dart

1. Install vscode extension flutter
	1. 打开 View > Command Palette
	2. 输入 “doctor”，选择 Flutter: Run Flutter Doctor
	3. 打开 OUTPUT 面板查看是否有错误，确保在不同的输出选项 (Output Options) 的下拉列表中选择了 Flutter
2. 创建项目
	1. Flutter: New Project
	2. Run > Start Debugging / Run > Start Without Debugging
		* 如无法运行，运行flutter doctor，看开发环境是否缺少，根据提示安装
3. 以调试 (debug)、性能 (profile) 或发布 (release) 模式运行应用
	1. launch.json
	2. 在 configurations 部分，修改 flutterMode 属性值为你想要的构建模式即可
		```
			"configurations": [
				{
				"name": "Flutter",
				"request": "launch",
				"type": "dart",
				"flutterMode": "debug"
				}
			]
		```
