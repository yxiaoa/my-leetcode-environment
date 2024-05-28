## Getting Started

Welcome to the VS Code Java world. Here is a guideline to help you get started to write Java code in Visual Studio Code.

## Folder Structure

The workspace contains two folders by default, where:

- `src`: the folder to maintain sources
- `lib`: the folder to maintain dependencies

Meanwhile, the compiled output files will be generated in the `bin` folder by default.

> If you want to customize the folder structure, open `.vscode/settings.json` and update the related settings there.

## Dependency Management

The `JAVA PROJECTS` view allows you to manage your dependencies. More details can be found [here](https://github.com/microsoft/vscode-java-dependency#manage-dependencies).

## Environment Setup

### JAVA

#### Build & Debug

1. Install JDK
2. Vscode install Extension Pack for Java
3. Command Palette (Ctrl+Shift+P) ->Java: Create Java Project command
4. Run > Start Debugging / Run without debugging

#### Unit test

1. Test Runner for Java extension (including in Extension Pack for Java)
2. settings.json check "java.project.referencedLibraries" path
3. Tool bar - Testing - Enable Java Tests - Junit，download junit lib to lib dir
4. Right click on a method or a class - Source Action - Generate test
    - if lib not found，try restart vscode
5. Testing manages all tests and summary, but test can be run in test class

#### Format & Lint

https://code.visualstudio.com/docs/java/java-linting
