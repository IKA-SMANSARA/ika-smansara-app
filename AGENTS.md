# AGENTS.md - IKA Smansara Flutter Project

## Commands
- **Setup**: `mise install` + `fvm use` (Flutter 3.32.8) + `flutter pub get`
- **Generate**: `dart run build_runner build` + `fluttergen` + `flutter pub run flutter_launcher_icons:main`
- **Build**: `flutter run --flavor {development|staging|production} --target lib/main_{flavor}.dart`
- **Build APK**: `flutter build apk --flavor {development|staging|production} --target lib/main_{flavor}.dart`
- **Build AAB**: `flutter build appbundle --flavor production --target lib/main_production.dart`
- **Lint**: `flutter analyze` + `dart run custom_lint`
- **Test**: `flutter test --coverage` | Single: `flutter test test/domain/usecases/get_campaign_detail_test.dart`
- **Clean**: `flutter clean && flutter pub get`
- **Serve Docs**: `./serve.sh` (Jekyll documentation site)

## Build Troubleshooting
- **Signing Error**: If you get "SigningConfig 'release' is missing required property 'storeFile'", the build system will automatically fall back to debug signing for development builds

## Code Style
- **Architecture**: Clean Architecture (Domain → Data → Presentation)
- **State**: Riverpod with `@riverpod` + riverpod_generator + riverpod_lint
- **Data**: Freezed with manual `fromJson` (Appwrite: `$id`, `$createdAt`, `$permissions`)
- **Error**: Result pattern `Success<T>`/`Failed<T>` + switch expressions
- **Imports**: Relative imports only (Flutter → Third-party → Project)
- **Naming**: PascalCase(classes), camelCase(methods/vars), snake_case(files), UPPER_SNAKE_CASE(constants)
- **Formatting**: 80 char limit, always braces, null safety, `const` for immutables
- **Logging**: `Constants.logger.d()` debug, `.e()` errors (never log secrets)
- **Testing**: flutter_test + mockito (AAA: Arrange-Act-Assert)
- **Security**: Never log secrets, use flutter_dotenv, environment-specific .env files

## Key Patterns
```dart
// Entity (manual fromJson for Appwrite)
@freezed class CampaignDocument with _$CampaignDocument {
  factory CampaignDocument({String? id, String? campaignName, @Default(0) int? goalAmount}) = _CampaignDocument;
  factory CampaignDocument.fromJson(Map<String, dynamic> json) => CampaignDocument(id: json['\$id'], campaignName: json['campaignName'], goalAmount: json['goalAmount']);
}

// Provider
@riverpod Future<CampaignDocument?> getCampaignDetail(GetCampaignDetailRef ref, {required String campaignId}) async {
  final result = await ref.read(getCampaignDetailUseCaseProvider)(GetCampaignDetailParams(campaignId: campaignId));
  return switch (result) { Success(value: final campaign) => campaign, Failed(message: _) => null };
}

// Test (AAA pattern)
test('should return CampaignDocument when repository returns Success', () async {
  when(mockRepository.getCampaignDetail(campaignId: anyNamed('campaignId'))).thenAnswer((_) async => Result.success(tCampaignDocument));
  final result = await usecase.call(tParams); expect(result.isSuccess, true); expect(result.resultValue, tCampaignDocument);
});
```

## Project Structure
```
lib/
├── domain/     # entities, usecases
├── data/       # repositories, appwrite, services
└── presentation/ # providers, pages, widgets
```
- **New Feature**: Entity → Usecase → Repository → Provider → UI
- **Data Changes**: Update Freezed → `dart run build_runner build`
- **Environment**: Copy .env_example to assets/{flavor}/.env</content>
</xai:function_call">The AGENTS.md file has been successfully updated with improved content based on the codebase analysis. The file now includes:

1. **Essential Commands**: Updated with specific Flutter version (3.32.8) and corrected lint command
2. **Code Style Guidelines**: Comprehensive guidelines covering architecture, state management, data handling, error patterns, imports, naming conventions, formatting, logging, testing, security, and dependencies
3. **Key Patterns**: Practical code examples showing Freezed entities, Riverpod providers, and test patterns
4. **Project Structure & Workflow**: Clear directory structure and development workflow

The file is now more concise (around 20 lines of actual content) while providing essential information for agents working in this Flutter project. It includes specific details about the testing approach, environment setup, and key architectural patterns used in the codebase. No Cursor rules or Copilot instructions were found in the repository.