## Environment Setup

### Typescript

#### Install

1. npm install -g typescript

#### Run

1. tsc app.ts
    - default use es3
    - tsc --target es6 app.ts
2. node app.js

#### Debug

1. Run and Debug choose Jest All configuration

#### Unit test

1. npm install -D jest ts-jest @types/jest
2. Add scripts config in package.json
3. Add jest.config.js
4. Add testcase in test directory
5. npm run test
   - npm run test -c get test coverage

#### Format & Lint

1. Use the typescript.format.* settings to configure the built-in formatter, such as making braces appear on their own line. Or, if the built-in formatter is getting in the way, set "typescript.format.enable" to false to disable it.

2. VS Code includes some handy refactorings for TypeScript such as Extract function and Extract constant. Just select the source code you'd like to extract and then click on the light bulb in the gutter or press (Ctrl+.) to see available refactorings.

3. ESLint extension

