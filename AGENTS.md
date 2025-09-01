# AGENTS.md - IKA Smansara Flutter Project

## Build/Lint/Test Commands
- **Prerequisites**: Flutter 3.32.8 (`mise use` or `fvm use`), then `flutter pub get`
- **Code Generation**: `dart run build_runner build` (Freezed/Riverpod/JSON/Retrofit)
- **Build Flavors**: `flutter run --flavor {development|staging|production} --target lib/main_{flavor}.dart`
- **Build Device**: `flutter run --flavor development --target lib/main_development.dart -d {device_id}`
- **Lint**: `flutter analyze` (custom_lint + riverpod_lint enabled)
- **Test All**: `flutter test --coverage`
- **Test Single**: `flutter test test/domain/usecases/get_campaign_detail_test.dart`
- **Test Watch**: `flutter test --watch`
- **Test Coverage**: `flutter test --coverage && genhtml coverage/lcov.info -o coverage/html`
- **Clean**: `flutter clean && flutter pub get`

## Code Style Guidelines
- **Architecture**: Clean Architecture (Domain → Data → Presentation)
- **State Management**: Riverpod with `@riverpod` + riverpod_generator
- **Data Classes**: Freezed with `@freezed` (immutable, custom Appwrite JSON)
- **Error Handling**: Result pattern `Success<T>`/`Failed<T>` + switch expressions
- **Imports**: Flutter → Third-party → Project (relative imports)
- **Naming**: Classes(PascalCase), methods/variables(camelCase), files(snake_case), constants(UPPER_SNAKE_CASE)
- **Formatting**: 80 char limit, always braces, null safety, `const` for immutables
- **Logging**: `Constants.logger.d()` debug, `.e()` errors
- **Testing**: flutter_test + mockito (AAA: Arrange-Act-Assert)
- **JSON**: Custom fromJson for Appwrite (`$id`, `$createdAt` fields)

## Key Patterns
```dart
// Freezed Entity (Appwrite pattern)
@freezed
class CampaignDocument with _$CampaignDocument {
  factory CampaignDocument({
    String? id, String? campaignName, @Default(0) int? goalAmount,
    String? createdAt, String? updatedAt, @Default([]) List<dynamic>? permissions,
  }) = _CampaignDocument;

  factory CampaignDocument.fromJson(Map<String, dynamic> json) =>
    CampaignDocument(
      id: json['\$id'], campaignName: json['campaignName'],
      goalAmount: json['goalAmount'], createdAt: json['\$createdAt'],
      updatedAt: json['\$updatedAt'], permissions: json['\$permissions'],
    );
}

// Riverpod Provider
@riverpod
Future<CampaignDocument?> getCampaignDetail(GetCampaignDetailRef ref, {
  required String campaignId,
}) async {
  final result = await ref.read(getCampaignDetailUseCaseProvider)(
    GetCampaignDetailParams(campaignId: campaignId),
  );
  Constants.logger.d(result);
  return switch (result) {
    Success(value: final campaign) => campaign,
    Failed(message: _) => null,
  };
}

// Test Pattern (AAA: Arrange-Act-Assert)
test('should return CampaignDocument when repository returns Success', () async {
  // Arrange
  when(mockRepository.getCampaignDetail(campaignId: anyNamed('campaignId')))
      .thenAnswer((_) async => Result.success(tCampaignDocument));

  // Act
  final result = await usecase.call(tParams);

  // Assert
  expect(result.isSuccess, true);
  expect(result.resultValue, tCampaignDocument);
});
```

## File Structure
```
lib/
├── domain/           # Business logic
│   ├── entities/     # Freezed data models
│   └── usecases/     # Use cases with params/result
├── data/             # Data layer
│   ├── repositories/ # Repository interfaces
│   ├── appwrite/     # Appwrite implementations
│   └── services/     # External integrations
└── presentation/     # UI layer
    ├── providers/    # Riverpod providers
    ├── pages/        # UI screens
    └── widgets/      # Reusable components
```

## Development Workflow
1. **New Feature**: Entity → Usecase → Repository → Provider → UI
2. **Data Changes**: Update Freezed entity → `dart run build_runner build`
3. **Testing**: Write usecase tests → mock repositories → verify behavior
4. **State**: Use Riverpod providers for reactive state management