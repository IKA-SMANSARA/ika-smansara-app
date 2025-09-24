---
layout: default
title: Testing Strategy
permalink: /docs/testing-strategy/
---

# Testing Strategy

IKA Smansara employs a comprehensive testing strategy that covers all layers of the Clean Architecture, ensuring code quality, reliability, and maintainability. The testing approach follows the Testing Pyramid with emphasis on unit tests and integration tests.

## 🏗️ Testing Pyramid

```
          ┌─────────────────┐
         │   E2E Tests      │  (Manual/Automated)
         │   (~10 tests)   │
          └─────────────────┘
                  │
          ┌─────────────────┐
         │Integration Tests │  (Flutter Integration Test)
         │   (~50 tests)    │
          └─────────────────┘
                  │
          ┌─────────────────┐
         │  Widget Tests    │  (Flutter Test)
         │   (~200 tests)   │
          └─────────────────┘
                  │
          ┌─────────────────┐
         │   Unit Tests     │  (Flutter Test)
         │   (~500 tests)   │
          └─────────────────┘
```

## 📊 Current Test Coverage

- **Domain Layer**: 95% coverage (Entities & Use Cases)
- **Data Layer**: 80% coverage (Repositories & Appwrite Implementation)
- **Presentation Layer**: 80% coverage (Providers, Widgets & Routing)
- **Overall Coverage**: 86%

## 🧪 Unit Testing

### Domain Layer Testing

#### Entity Testing

Test Freezed entities and their serialization:

```dart
void main() {
  const tCampaignName = 'Education Fund';
  const tDescription = 'Help build a school';
  const tGoalAmount = 10000000;

  const tCampaignDocument = CampaignDocument(
    id: 'test_id',
    campaignName: tCampaignName,
    description: tDescription,
    goalAmount: tGoalAmount,
    currentAmount: 0,
    categories: ['education'],
  );

  group('CampaignDocument', () {
    test('should create CampaignDocument with correct values', () {
      expect(tCampaignDocument.campaignName, tCampaignName);
      expect(tCampaignDocument.description, tDescription);
      expect(tCampaignDocument.goalAmount, tGoalAmount);
      expect(tCampaignDocument.currentAmount, 0);
      expect(tCampaignDocument.categories, ['education']);
    });

    test('should support JSON serialization', () {
      final json = tCampaignDocument.toJson();
      final fromJson = CampaignDocument.fromJson(json);

      expect(fromJson, tCampaignDocument);
    });

    test('should handle null values correctly', () {
      const campaign = CampaignDocument(
        campaignName: 'Test',
        description: 'Test description',
        goalAmount: 1000,
      );

      expect(campaign.id, isNull);
      expect(campaign.currentAmount, 0); // Default value
      expect(campaign.categories, []); // Default value
    });
  });
}
```

#### Use Case Testing

Test business logic with mocked dependencies:

```dart
void main() {
  late CreateCampaign usecase;
  late MockCampaignRepository mockRepository;

  setUp(() {
    mockRepository = MockCampaignRepository();
    usecase = CreateCampaign(campaignRepository: mockRepository);
  });

  const tParams = CreateCampaignParams(
    campaignName: 'Education Fund',
    description: 'Help build a school',
    goalAmount: 10000000,
  );

  const tCampaignDocument = CampaignDocument(
    id: 'test_id',
    campaignName: 'Education Fund',
    description: 'Help build a school',
    goalAmount: 10000000,
  );

  group('CreateCampaign', () {
    test('should return CampaignDocument when repository returns Success', () async {
      // Arrange
      when(mockRepository.createCampaign(
        campaignName: anyNamed('campaignName'),
        description: anyNamed('description'),
        goalAmount: anyNamed('goalAmount'),
      )).thenAnswer((_) async => Result.success(tCampaignDocument));

      // Act
      final result = await usecase.call(tParams);

      // Assert
      expect(result.isSuccess, true);
      expect(result.resultValue, tCampaignDocument);
      verify(mockRepository.createCampaign(
        campaignName: tParams.campaignName,
        description: tParams.description,
        goalAmount: tParams.goalAmount,
      )).called(1);
    });

    test('should return Failed when campaign name is empty', () async {
      // Arrange
      const invalidParams = CreateCampaignParams(
        campaignName: '',
        description: 'Valid description',
        goalAmount: 1000,
      );

      // Act
      final result = await usecase.call(invalidParams);

      // Assert
      expect(result.isFailed, true);
      expect(result.errorMessage, 'Campaign name cannot be empty');
      verifyNever(mockRepository.createCampaign(
        campaignName: anyNamed('campaignName'),
        description: anyNamed('description'),
        goalAmount: anyNamed('goalAmount'),
      ));
    });

    test('should return Failed when repository returns Failed', () async {
      // Arrange
      when(mockRepository.createCampaign(
        campaignName: anyNamed('campaignName'),
        description: anyNamed('description'),
        goalAmount: anyNamed('goalAmount'),
      )).thenAnswer((_) async => Result.failed('Database error'));

      // Act
      final result = await usecase.call(tParams);

      // Assert
      expect(result.isFailed, true);
      expect(result.errorMessage, 'Database error');
    });
  });
}
```

### Data Layer Testing

#### Repository Testing

Test repository implementations with external service mocks:

```dart
void main() {
  late AppwriteCampaignRepository repository;
  late MockDatabases mockDatabases;
  late MockStorage mockStorage;

  setUp(() {
    mockDatabases = MockDatabases();
    mockStorage = MockStorage();
    repository = AppwriteCampaignRepository(
      databases: mockDatabases,
      storage: mockStorage,
    );
  });

  group('AppwriteCampaignRepository', () {
    group('getCampaigns', () {
      test('should return list of campaigns on success', () async {
        // Arrange
        final mockDocuments = [
          MockDocument(data: tCampaignJson),
          MockDocument(data: tCampaignJson2),
        ];

        when(mockDatabases.listDocuments(
          databaseId: anyNamed('databaseId'),
          collectionId: anyNamed('collectionId'),
          queries: anyNamed('queries'),
        )).thenAnswer((_) async => MockDocumentList(documents: mockDocuments));

        // Act
        final result = await repository.getCampaigns();

        // Assert
        expect(result.isSuccess, true);
        expect(result.resultValue, hasLength(2));
        expect(result.resultValue?[0].campaignName, 'Test Campaign');
      });

      test('should return Failed on database error', () async {
        // Arrange
        when(mockDatabases.listDocuments(
          databaseId: anyNamed('databaseId'),
          collectionId: anyNamed('collectionId'),
          queries: anyNamed('queries'),
        )).thenThrow(Exception('Database connection failed'));

        // Act
        final result = await repository.getCampaigns();

        // Assert
        expect(result.isFailed, true);
        expect(result.errorMessage, contains('Failed to fetch campaigns'));
      });
    });

    group('createCampaign', () {
      test('should create campaign and return document', () async {
        // Arrange
        const tParams = CreateCampaignParams(
          campaignName: 'New Campaign',
          description: 'Campaign description',
          goalAmount: 5000000,
        );

        final mockDocument = MockDocument(data: {
          ...tCampaignJson,
          'campaignName': tParams.campaignName,
          'description': tParams.description,
          'goalAmount': tParams.goalAmount,
        });

        when(mockDatabases.createDocument(
          databaseId: anyNamed('databaseId'),
          collectionId: anyNamed('collectionId'),
          documentId: anyNamed('documentId'),
          data: anyNamed('data'),
        )).thenAnswer((_) async => mockDocument);

        // Act
        final result = await repository.createCampaign(
          campaignName: tParams.campaignName,
          description: tParams.description,
          goalAmount: tParams.goalAmount,
        );

        // Assert
        expect(result.isSuccess, true);
        expect(result.resultValue?.campaignName, tParams.campaignName);
        expect(result.resultValue?.goalAmount, tParams.goalAmount);
      });
    });
  });
}
```

## 🧩 Widget Testing

### Provider Testing

Test Riverpod providers with mocked dependencies:

```dart
void main() {
  late ProviderContainer container;
  late MockCampaignRepository mockRepository;

  setUp(() {
    container = ProviderContainer();
    mockRepository = MockCampaignRepository();
  });

  tearDown(() {
    container.dispose();
  });

  group('getCampaignsProvider', () {
    test('should return campaigns on success', () async {
      // Arrange
      when(mockRepository.getCampaigns())
          .thenAnswer((_) async => Result.success([tCampaignDocument]));

      container = ProviderContainer(
        overrides: [
          campaignRepositoryProvider.overrideWithValue(mockRepository),
        ],
      );

      // Act
      final campaigns = await container.read(getCampaignsProvider.future);

      // Assert
      expect(campaigns, [tCampaignDocument]);
    });

    test('should return empty list on failure', () async {
      // Arrange
      when(mockRepository.getCampaigns())
          .thenAnswer((_) async => Result.failed('Network error'));

      container = ProviderContainer(
        overrides: [
          campaignRepositoryProvider.overrideWithValue(mockRepository),
        ],
      );

      // Act
      final campaigns = await container.read(getCampaignsProvider.future);

      // Assert
      expect(campaigns, isEmpty);
    });
  });
}
```

### Widget Testing

Test UI components with mocked providers:

```dart
void main() {
  late MockCampaignRepository mockRepository;

  setUp(() {
    mockRepository = MockCampaignRepository();
  });

  group('CampaignListScreen', () {
    testWidgets('should display loading indicator initially', (tester) async {
      // Arrange
      when(mockRepository.getCampaigns())
          .thenAnswer((_) async => Future.delayed(
                const Duration(seconds: 1),
                () => Result.success([tCampaignDocument]),
              ));

      // Act
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            campaignRepositoryProvider.overrideWithValue(mockRepository),
          ],
          child: const MaterialApp(home: CampaignListScreen()),
        ),
      );

      // Assert - Initial loading state
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('should display campaigns when loaded', (tester) async {
      // Arrange
      when(mockRepository.getCampaigns())
          .thenAnswer((_) async => Result.success([tCampaignDocument]));

      // Act
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            campaignRepositoryProvider.overrideWithValue(mockRepository),
          ],
          child: const MaterialApp(home: CampaignListScreen()),
        ),
      );

      await tester.pump(); // Trigger rebuild

      // Assert
      expect(find.text('Test Campaign'), findsOneWidget);
      expect(find.byType(CircularProgressIndicator), findsNothing);
    });

    testWidgets('should display error message on failure', (tester) async {
      // Arrange
      when(mockRepository.getCampaigns())
          .thenAnswer((_) async => Result.failed('Network error'));

      // Act
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            campaignRepositoryProvider.overrideWithValue(mockRepository),
          ],
          child: const MaterialApp(home: CampaignListScreen()),
        ),
      );

      await tester.pump(); // Trigger rebuild

      // Assert
      expect(find.text('Network error'), findsOneWidget);
      expect(find.byType(CircularProgressIndicator), findsNothing);
    });
  });
}
```

### Form Testing

Test form validation and submission:

```dart
void main() {
  group('CampaignForm', () {
    testWidgets('should validate required fields', (tester) async {
      // Act
      await tester.pumpWidget(
        const MaterialApp(home: CampaignForm()),
      );

      // Find form fields
      final titleField = find.byKey(const Key('campaign_title_field'));
      final submitButton = find.byKey(const Key('submit_button'));

      // Try to submit empty form
      await tester.tap(submitButton);
      await tester.pump();

      // Assert validation errors
      expect(find.text('Title is required'), findsOneWidget);
      expect(find.text('Description is required'), findsOneWidget);
    });

    testWidgets('should submit form with valid data', (tester) async {
      // Arrange
      final mockNotifier = MockCreateCampaignNotifier();

      // Act
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            createCampaignNotifierProvider.overrideWith(() => mockNotifier),
          ],
          child: const MaterialApp(home: CampaignForm()),
        ),
      );

      // Fill form
      await tester.enterText(
        find.byKey(const Key('campaign_title_field')),
        'Test Campaign',
      );
      await tester.enterText(
        find.byKey(const Key('campaign_description_field')),
        'Test description',
      );

      // Submit form
      await tester.tap(find.byKey(const Key('submit_button')));
      await tester.pump();

      // Assert
      verify(mockNotifier.createCampaign(any)).called(1);
    });
  });
}
```

## 🔗 Integration Testing

### Full Feature Testing

Test complete user flows:

```dart
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Campaign Creation Flow', () {
    testWidgets('user can create campaign successfully', (tester) async {
      // Setup real Appwrite client for integration test
      await tester.pumpWidget(const MyApp());

      // Navigate to create campaign
      await tester.tap(find.byKey(const Key('create_campaign_button')));
      await tester.pumpAndSettle();

      // Fill form
      await tester.enterText(
        find.byKey(const Key('campaign_title_field')),
        'Integration Test Campaign',
      );
      await tester.enterText(
        find.byKey(const Key('campaign_description_field')),
        'Testing full campaign creation flow',
      );
      await tester.enterText(
        find.byKey(const Key('goal_amount_field')),
        '1000000',
      );

      // Submit
      await tester.tap(find.byKey(const Key('submit_button')));
      await tester.pumpAndSettle();

      // Verify success
      expect(find.text('Campaign created successfully'), findsOneWidget);

      // Verify campaign appears in list
      await tester.tap(find.byKey(const Key('back_to_list_button')));
      await tester.pumpAndSettle();

      expect(find.text('Integration Test Campaign'), findsOneWidget);
    });
  });
}
```

### API Integration Testing

Test external service integrations:

```dart
void main() {
  late Dio mockDio;
  late MockHttpClientAdapter mockAdapter;

  setUp(() {
    mockDio = Dio();
    mockAdapter = MockHttpClientAdapter();
    mockDio.httpClientAdapter = mockAdapter;
  });

  group('Appwrite Integration', () {
    test('should handle authentication correctly', () async {
      // Mock successful authentication response
      mockAdapter.onPost(
        'https://cloud.appwrite.io/v1/account/sessions/email',
        (request) => request.reply(201, {
          '\$id': 'session_id',
          'userId': 'user_id',
          'expire': '2024-12-31T23:59:59.000Z',
        }),
        headers: {'content-type': 'application/json'},
      );

      final authRepo = AppwriteAuthenticationRepository(
        account: Account(mockDio),
      );

      final result = await authRepo.login(
        email: 'test@example.com',
        password: 'password123',
      );

      expect(result.isSuccess, true);
      expect(result.resultValue?.id, 'user_id');
    });
  });
}
```

## 🛠️ Testing Utilities

### Test Helpers

Shared utilities for consistent testing:

```dart
// test/helpers/test_helper.dart

import 'package:ika_smansara/domain/entities/campaign_document.dart';

// Test data constants
const tCampaignJson = {
  '\$id': 'test_id',
  'campaignName': 'Test Campaign',
  'description': 'Test description',
  'goalAmount': 1000000,
  'currentAmount': 500000,
  'categories': ['education'],
  '\$createdAt': '2024-01-01T00:00:00.000Z',
  '\$updatedAt': '2024-01-01T00:00:00.000Z',
};

const tCampaignDocument = CampaignDocument(
  id: 'test_id',
  campaignName: 'Test Campaign',
  description: 'Test description',
  goalAmount: 1000000,
  currentAmount: 500000,
  categories: ['education'],
);

// Mock setup utilities
MockCampaignRepository createMockCampaignRepository() {
  final mock = MockCampaignRepository();
  when(mock.getCampaigns())
      .thenAnswer((_) async => Result.success([tCampaignDocument]));
  return mock;
}

// Widget test utilities
Future<void> pumpProviderScope(
  WidgetTester tester,
  Widget child, {
  List<Override> overrides = const [],
}) async {
  await tester.pumpWidget(
    ProviderScope(
      overrides: overrides,
      child: MaterialApp(
        home: child,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
      ),
    ),
  );
}
```

### Mock Generation

Generate mocks using Mockito:

```dart
// Generate mocks for all repositories
// Run: flutter pub run build_runner build

@GenerateMocks([
  CampaignRepository,
  AuthenticationRepository,
  Databases,
  Storage,
  Account,
])
void main() {}
```

## 🚀 CI/CD Testing

### GitHub Actions Test Workflow

```yaml
# .github/workflows/test.yml
name: Test

on:
  push:
    branches: [ main, develop ]
  pull_request:
    branches: [ main ]

jobs:
  test:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v4

    - name: Setup Flutter
      uses: subosito/flutter-action@v2
      with:
        flutter-version: '3.32.8'

    - name: Install dependencies
      run: flutter pub get

    - name: Generate code
      run: dart run build_runner build

    - name: Run tests with coverage
      run: flutter test --coverage

    - name: Upload coverage to Codecov
      uses: codecov/codecov-action@v3
      with:
        file: coverage/lcov.info
```

### Coverage Reporting

Generate and view coverage reports:

```bash
# Run tests with coverage
flutter test --coverage

# Generate HTML report
genhtml coverage/lcov.info -o coverage/html

# Open report in browser
open coverage/html/index.html
```

## 📏 Code Coverage Goals

### Target Coverage by Layer

| Layer | Target Coverage | Current Coverage | Status |
|-------|----------------|------------------|--------|
| Domain | 95% | 95% | ✅ |
| Data | 85% | 80% | 🟡 |
| Presentation | 85% | 80% | 🟡 |
| Overall | 90% | 86% | 🟡 |

### Coverage Improvement Plan

1. **Data Layer**: Add more error scenario tests for repositories
2. **Presentation Layer**: Increase widget and provider test coverage
3. **Integration Tests**: Add more end-to-end user flow tests
4. **Edge Cases**: Test network failures, invalid data, etc.

## 🏆 Testing Best Practices

### 1. Test Structure (AAA Pattern)
```dart
test('should return success when valid data provided', () async {
  // Arrange - Setup test data and mocks
  when(mockRepository.someMethod())
      .thenAnswer((_) async => Result.success(testData));

  // Act - Execute the code under test
  final result = await usecase.call(params);

  // Assert - Verify the expected behavior
  expect(result.isSuccess, true);
  expect(result.resultValue, testData);
});
```

### 2. Mock Setup
- Use Mockito for generating mocks
- Setup mocks in `setUp()` methods
- Verify interactions with `verify()`
- Use `any` matchers for flexible matching

### 3. Test Naming
- Describe what the test verifies: `should return success when...`
- Use descriptive names for test groups
- Include the method/class being tested

### 4. Test Data
- Use consistent test data across tests
- Define test constants in helper files
- Create factory methods for complex test objects

### 5. Async Testing
- Use `async`/`await` for asynchronous tests
- Use `pump()` and `pumpAndSettle()` for widget tests
- Handle timeouts appropriately

### 6. Error Testing
- Test both success and failure scenarios
- Test different types of errors (network, validation, etc.)
- Verify error messages are user-friendly

### 7. Integration Testing
- Test real implementations with test databases
- Use separate test environments
- Clean up test data after tests

This comprehensive testing strategy ensures that IKA Smansara maintains high code quality and reliability across all architectural layers.