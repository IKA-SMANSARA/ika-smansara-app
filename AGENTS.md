# AGENTS.md - IKA Smansara Flutter Project

## Essential Commands
- **Setup**: `mise install` + `fvm use` (Flutter 3.32.8) + `flutter pub get`
- **Generate**: `dart run build_runner build` + `fluttergen` + `flutter pub run flutter_launcher_icons:main`
- **Build**: `flutter run --flavor development --target lib/main_development.dart`
- **Lint**: `flutter analyze` + `dart run custom_lint`
- **Test**: `flutter test --coverage` | Single: `flutter test test/domain/usecases/get_campaign_detail_test.dart`
- **Clean**: `flutter clean && flutter pub get`

## Code Style Guidelines
- **Architecture**: Clean Architecture (Domain → Data → Presentation)
- **State**: Riverpod with `@riverpod` + riverpod_generator + riverpod_lint
- **Data**: Freezed with `@freezed` + json_serializable (Appwrite: `$id`, `$createdAt`, `$permissions`)
- **Error**: Result pattern `Success<T>`/`Failed<T>` + switch expressions
- **Imports**: Relative imports only (Flutter → Third-party → Project)
- **Naming**: PascalCase(classes), camelCase(methods/vars), snake_case(files), UPPER_SNAKE_CASE(constants)
- **Formatting**: 80 char limit, always braces, null safety, `const` for immutables
- **Logging**: `Constants.logger.d()` debug, `.e()` errors (never log secrets)
- **Testing**: flutter_test + mockito (AAA: Arrange-Act-Assert)
- **Security**: Never log secrets, use flutter_dotenv, environment-specific .env files

## Key Patterns
```dart
// Entity
@freezed
class CampaignDocument with _$CampaignDocument {
  factory CampaignDocument({String? id, String? campaignName, @Default(0) int? goalAmount}) = _CampaignDocument;
  factory CampaignDocument.fromJson(Map<String, dynamic> json) => _$CampaignDocumentFromJson(json);
}

// Provider
@riverpod
Future<CampaignDocument?> getCampaignDetail(GetCampaignDetailRef ref, {required String campaignId}) async {
  final result = await ref.read(getCampaignDetailUseCaseProvider)(GetCampaignDetailParams(campaignId: campaignId));
  return switch (result) { Success(value: final campaign) => campaign, Failed(message: _) => null };
}

// Test
test('should return CampaignDocument when repository returns Success', () async {
  when(mockRepository.getCampaignDetail(campaignId: anyNamed('campaignId')))
      .thenAnswer((_) async => Result.success(tCampaignDocument));
  final result = await usecase.call(tParams);
  expect(result.isSuccess, true);
});
```

## Project Structure
```
lib/
├── domain/     # entities, usecases
├── data/       # repositories, appwrite, services
└── presentation/ # providers, pages, widgets
```

## Development Workflow
1. New Feature: Entity → Usecase → Repository → Provider → UI
2. Data Changes: Update Freezed → `dart run build_runner build`
3. Testing: Write usecase tests with mocked repositories
4. Assets: Update assets → `fluttergen` + `flutter pub run flutter_launcher_icons:main`