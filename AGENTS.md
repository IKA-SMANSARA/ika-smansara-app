# AGENTS.md - IKA Smansara Flutter Project

## Commands
- **Setup**: `mise use` or `fvm use` (Flutter 3.32.8), then `flutter pub get`
- **Generate**: `dart run build_runner build` (Freezed/Riverpod/JSON/Retrofit/Hive)
- **Build**: `flutter run --flavor {development|staging|production} --target lib/main_{flavor}.dart`
- **Lint**: `flutter analyze` (custom_lint + riverpod_lint enabled)
- **Test**: `flutter test --coverage` | Single: `flutter test test/path/to/test_file.dart`
- **Clean**: `flutter clean && flutter pub get`

## Code Style
- **Architecture**: Clean Architecture (Domain → Data → Presentation)
- **State**: Riverpod with `@riverpod` + riverpod_generator
- **Data**: Freezed with `@freezed` (immutable, Appwrite JSON with `$id`, `$createdAt`)
- **Error**: Result pattern `Success<T>`/`Failed<T>` + switch expressions
- **Imports**: Flutter → Third-party → Project (relative imports only)
- **Naming**: PascalCase(classes), camelCase(methods/vars), snake_case(files), UPPER_SNAKE_CASE(constants)
- **Formatting**: 80 char limit, always braces, null safety, `const` for immutables
- **Logging**: `Constants.logger.d()` debug, `.e()` errors
- **Testing**: flutter_test + mockito (AAA pattern: Arrange-Act-Assert)

## Patterns
```dart
// Entity: Freezed with Appwrite fields
@freezed
class CampaignDocument with _$CampaignDocument {
  factory CampaignDocument({
    String? id, String? campaignName, @Default(0) int? goalAmount,
    String? createdAt, String? updatedAt, @Default([]) List<dynamic>? permissions,
  }) = _CampaignDocument;
  factory CampaignDocument.fromJson(Map<String, dynamic> json) => _$CampaignDocumentFromJson(json);
}

// Provider: Riverpod with error handling
@riverpod
Future<CampaignDocument?> getCampaignDetail(GetCampaignDetailRef ref, {required String campaignId}) async {
  final result = await ref.read(getCampaignDetailUseCaseProvider)(GetCampaignDetailParams(campaignId: campaignId));
  Constants.logger.d(result);
  return switch (result) { Success(value: final campaign) => campaign, Failed(message: _) => null };
}

// Test: AAA pattern with mockito
test('should return CampaignDocument when repository returns Success', () async {
  // Arrange
  when(mockRepository.getCampaignDetail(campaignId: anyNamed('campaignId')))
      .thenAnswer((_) async => Result.success(tCampaignDocument));
  // Act
  final result = await usecase.call(tParams);
  // Assert
  expect(result.isSuccess, true); expect(result.resultValue, tCampaignDocument);
});
```

## Structure
```
lib/
├── domain/     # entities, usecases
├── data/       # repositories, appwrite, services
└── presentation/ # providers, pages, widgets
```

## Workflow
1. New Feature: Entity → Usecase → Repository → Provider → UI
2. Data Changes: Update Freezed → `dart run build_runner build`
3. Testing: Write usecase tests with mocked repositories