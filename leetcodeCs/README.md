## Environment Setup

### C#

#### Run

创建解决方案
  - dotnet new sln
      - => <dirname>.sln

创建类库项目
  - dotnet new classlib -o StringLibrary
      - => class directory
  - dotnet sln add StringLibrary/StringLibrary.csproj
  - dotnet build

创建应用
  - dotnet new console -o ShowCase
      - => app directory
  - dotnet sln add ShowCase/ShowCase.csproj

添加项目引用
  - dotnet add ShowCase/ShowCase.csproj reference StringLibrary/StringLibrary.csproj

运行
  - dotnet run --project ShowCase/ShowCase.csproj

#### Unit test

创建测试
  - dotnet new mstest -o StringLibraryTest
      - => test directory
  - dotnet sln add StringLibraryTest/StringLibraryTest.csproj

添加引用
  - dotnet add StringLibraryTest/StringLibraryTest.csproj reference StringLibrary/StringLibrary.csproj

测试
  - dotnet test StringLibraryTest/StringLibraryTest.csproj

测试发行版本
  - dotnet test StringLibraryTest/StringLibraryTest.csproj --configuration Release

调试
  - 代码行左侧栏运行图标处右键 - debug tests

#### Debug

TBD

#### Format & Lint

TBD

