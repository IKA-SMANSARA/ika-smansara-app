# AGENTS.md - IKA Smansara Flutter Project

## Build/Lint/Test Commands
- **Prerequisites**: Flutter 3.32.8 (use `mise` or `fvm`), run `flutter pub get` after cloning
- **Code Generation**: `dart run build_runner build` (Freezed/Riverpod/JSON serializable/Retrofit)
- **Build**: `flutter run --flavor {development|staging|production} --target lib/main_{flavor}.dart`
- **Build Device**: `flutter run --flavor development --target lib/main_development.dart -d {device_id}`
- **Lint**: `flutter analyze` (uses custom_lint + riverpod_lint)
- **Test All**: `flutter test --coverage`
- **Test Single**: `flutter test test/domain/usecases/get_campaign_detail_test.dart`
- **Test Watch**: `flutter test --watch`
- **Test Coverage**: `flutter test --coverage && genhtml coverage/lcov.info -o coverage/html`
- **Clean**: `flutter clean && flutter pub get`

## Code Style Guidelines
- **Architecture**: Clean Architecture (Domain → Data → Presentation)
- **State Management**: Riverpod with `@riverpod` annotation + riverpod_generator
- **Data Classes**: Freezed with `@freezed` (immutable models, custom JSON serialization for Appwrite)
- **Error Handling**: Result pattern with `Success<T>`/`Failed<T>` types + switch expressions
- **Imports**: Group as Flutter → Third-party → Project (relative imports within project)
- **Naming**: Classes (PascalCase), methods/variables (camelCase), files (snake_case), constants (UPPER_SNAKE_CASE)
- **Formatting**: 80 char line limit, always use braces, full null safety, `const` for immutable collections
- **Logging**: `Constants.logger.d()` for debug, `.e()` for errors
- **Testing**: flutter_test + mockito for mocking (AAA pattern: Arrange-Act-Assert)
- **JSON**: Custom fromJson for Appwrite entities (handle `$id`, `$createdAt` fields)

## Key Patterns
```dart
// Freezed Entity with Custom JSON (Appwrite pattern)
@freezed
class CampaignDocument with _$CampaignDocument {
  factory CampaignDocument({
    String? id,
    @Default(0) int? goalAmount,
  }) = _CampaignDocument;

  factory CampaignDocument.fromJson(Map<String, dynamic> json) => CampaignDocument(
    id: json['\$id'], goalAmount: json['goalAmount'],
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
  return switch (result) {
    Success(value: final campaign) => campaign,
    Failed(message: _) => null,
  };
}

// Error Handling with Result Pattern
final result = await usecase.call(params);
return switch (result) {
  Success(value: final data) => Result.success(data),
  Failed(message: final error) => Result.failed(error ?? 'Unknown error'),
};
```

## File Structure
```
lib/
├── domain/
│   ├── entities/        # Freezed data models + custom JSON
│   └── usecases/        # Business logic with params/result
├── data/
│   ├── repositories/    # Repository interfaces
│   ├── appwrite/        # Appwrite implementations
│   └── services/        # External service integrations
└── presentation/
    ├── providers/       # Riverpod providers + state management
    ├── pages/          # UI screens
    └── widgets/        # Reusable UI components
```

## Development Workflow
1. **New Feature**: Create entity → usecase → repository → provider → UI
2. **Data Changes**: Update Freezed entity → run `dart run build_runner build`
3. **Testing**: Write tests for usecases → mock repositories → verify behavior
4. **State Management**: Use Riverpod providers for reactive state updates