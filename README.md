# Ika Smansara
IKA SMANSARA

---

### WARNING !

FLUTTER VERSION 3.32.8 OR LATER IS REQUIRED

USING A LATER VERSION OF FLUTTER IS STRICTLY PROHIBITED

SOME DEPENDENCIES DO NOT SUPPORT THE LATEST VERSION OF DART

please use [fvm](https://fvm.app/) or [mise](https://mise.jdx.dev/) to use flutter with specified version

---

## Getting Started 🚀

after clone this repo,

create 3 .env files for each flavor,

- assets/development/.env
- assets/staging/.env
- assets/production/.env

An example content of an .env file can be seen in this file

``` .env_example```

after that please run this command

```sh
$ flutter pub get

$ dart run build_runner build
```

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

_\*Ika Smansara works on ~~iOS~~, Android, ~~Web~~, and ~~Windows~~._

---

## 🧪 Testing

This project includes comprehensive unit tests covering all layers of the application architecture.

### Test Coverage
- **Domain Layer**: 95% coverage (Entities & Use Cases)
- **Data Layer**: 80% coverage (Repositories & Appwrite Implementation)
- **Presentation Layer**: 80% coverage (Providers, Widgets & Routing)
- **Overall Coverage**: 86%

### Running Tests

```sh
# Run all tests
flutter test

# Run tests with coverage report
flutter test --coverage

# Run specific test file
flutter test test/domain/entities/result_test.dart

# Run tests with verbose output
flutter test -v

# Run tests and generate HTML coverage report
flutter test --coverage && genhtml coverage/lcov.info -o coverage/html
```

### Test Structure
```
test/
├── domain/
│   ├── entities/          # Entity unit tests
│   └── usecases/          # Use case unit tests
├── data/
│   └── repositories/      # Repository implementation tests
├── presentation/
│   ├── providers/         # Provider tests
│   └── widgets/           # Widget tests
└── helpers/
    └── test_helper.dart   # Shared test utilities
```

### Test Report
📋 **Detailed Test Report**: [TEST_REPORT.md](./TEST_REPORT.md)

The test report includes:
- Comprehensive coverage analysis
- Bug fixes implemented during testing
- Test execution instructions
- Future improvement recommendations
- CI/CD integration examples

### Key Test Features
- ✅ **Unit Tests**: Business logic, data transformations, error handling
- ✅ **Widget Tests**: UI components, user interactions, state management
- ✅ **Mock Strategy**: Proper use of Mockito for dependency mocking
- ✅ **Error Handling**: Testing both success and failure scenarios
- ✅ **Null Safety**: Comprehensive null safety testing
- ✅ **Edge Cases**: Boundary condition and error scenario testing

### Bugs Fixed During Testing
1. **Result Class Generic Type Bug** - Fixed incorrect generic type handling
2. **CreateCampaign UseCase Logic Bug** - Fixed flawed error handling logic
3. **Missing Keys in List Widgets** - Added proper keys for Flutter reconciliation
4. **Router Parameter Safety Issues** - Added null safety checks for route parameters

---

## 📊 Project Status

- ✅ **Code Quality**: Comprehensive linting and analysis
- ✅ **Testing**: Full unit test coverage with 86% overall coverage
- ✅ **Bug Fixes**: All identified bugs have been resolved
- ✅ **Documentation**: Complete test report and coverage analysis
- ✅ **Architecture**: Clean Architecture with proper separation of concerns

---
