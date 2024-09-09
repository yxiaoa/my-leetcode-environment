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
	1. View > Command Palette
	2. Type "doctor"，select Flutter: Run Flutter Doctor
	3. Open OUTPUT panel and check if errors exist, make sure Flutter is selected in the lists for different Output Options
2. Create project
	1. Flutter: New Project
	2. Run > Start Debugging / Run > Start Without Debugging
		* If fail, run flutter doctor to check environment and install required runtime environment
3. Use debug/profile/release mode run application
	1. launch.json
	2. configurations - flutterMode change to expected mode
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
