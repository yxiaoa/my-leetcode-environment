## Environment Setup

### Typescript

#### Run

1. Install Ceedling
2. Run in terminal
   - ceedling

### Ruby

#### Install

1. npm install -g typescript

#### Run

1. tsc app.ts
    - default use es3
    - tsc --target es6 app.ts
2. node app.js

#### Debug

1. add configuration - js
    - Program set to js
2. F5: Launch debugging

#### Unit test

1. npm install -D jest ts-jest @types/jest

#### Format & Lint

1. Use the typescript.format.* settings to configure the built-in formatter, such as making braces appear on their own line. Or, if the built-in formatter is getting in the way, set "typescript.format.enable" to false to disable it.

2. VS Code includes some handy refactorings for TypeScript such as Extract function and Extract constant. Just select the source code you'd like to extract and then click on the light bulb in the gutter or press (Ctrl+.) to see available refactorings.

3. ESLint extension

