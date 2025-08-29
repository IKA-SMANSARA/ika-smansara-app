# AGENTS.md - IKA Smansara Flutter Project

## Build/Lint/Test Commands
- **Prerequisites**: Flutter 3.32.8 (use `mise` or `fvm`), run `flutter pub get` after cloning
- **Code Generation**: `dart run build_runner build` (Freezed/Riverpod/JSON serializable)
- **Build**: `flutter run --flavor {development|staging|production} --target lib/main_{flavor}.dart`
- **Lint**: `flutter analyze` (uses custom_lint)
- **Test All**: `flutter test`
- **Test Single**: `flutter test test/path/to/test_file.dart`
- **Test Watch**: `flutter test --watch`

## Code Style Guidelines
- **Architecture**: Clean Architecture (Domain → Data → Presentation)
- **State Management**: Riverpod with `@riverpod` annotation
- **Data Classes**: Freezed with `@freezed` (immutable models, JSON serialization)
- **Error Handling**: Result pattern with `Success<T>`/`Failed<T>` types
- **Imports**: Group as Flutter → Third-party → Project (use relative imports within project)
- **Naming**: Classes (PascalCase), methods/variables (camelCase), files (snake_case), constants (UPPER_SNAKE_CASE)
- **Formatting**: 80 char line limit, always use braces, full null safety, `const` for immutable collections
- **Logging**: `Constants.logger.d()` for debug, `.e()` for errors
- **Testing**: flutter_test + mockito for mocking repositories

## Key Patterns
```dart
// Freezed Entity
@freezed
class CampaignDocument with _$CampaignDocument {
  factory CampaignDocument({String? id, @Default(0) int? goalAmount}) = _CampaignDocument;
  factory CampaignDocument.fromJson(Map<String, dynamic> json) => _$CampaignDocumentFromJson(json);
}

// Riverpod Provider
@riverpod
CampaignRepository campaignRepository(CampaignRepositoryRef ref) => AppwriteCampaignRepository();

// Error Handling
if (result is Success) {
  return Result.success((result as Success).value);
} else {
  return Result.failed(result.errorMessage ?? 'Error!');
}
```

## File Structure
```
lib/
├── domain/entities/     # Freezed data models
├── domain/usecases/     # Business logic
├── data/repositories/   # Repository interfaces
├── data/appwrite/       # Appwrite implementations
└── presentation/        # Riverpod providers + UI
```