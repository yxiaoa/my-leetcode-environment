## Environment Setup

### C#

#### Run

1. Create Solution
  - dotnet new sln
      - => <dirname>.sln
2. Create Library Project
  - dotnet new classlib -o StringLibrary
      - => class directory
  - dotnet sln add StringLibrary/StringLibrary.csproj
  - dotnet build
3. Create Application
  - dotnet new console -o ShowCase
      - => app directory
  - dotnet sln add ShowCase/ShowCase.csproj
4. Add project reference
  - dotnet add ShowCase/ShowCase.csproj reference StringLibrary/StringLibrary.csproj
5. Run
  - dotnet run --project ShowCase/ShowCase.csproj

#### Unit test

1. Create test
  - dotnet new mstest -o StringLibraryTest
      - => test directory
  - dotnet sln add StringLibraryTest/StringLibraryTest.csproj
2. Add reference
  - dotnet add StringLibraryTest/StringLibraryTest.csproj reference StringLibrary/StringLibrary.csproj
3. Run test
  - dotnet test StringLibraryTest/StringLibraryTest.csproj
4. Run test release
  - dotnet test StringLibraryTest/StringLibraryTest.csproj --configuration Release
5. Debug
  - right click on left side of code line -> debug tests

#### Debug

TBD

#### Format & Lint

TBD

TODO:
- [ ] separate exercises

