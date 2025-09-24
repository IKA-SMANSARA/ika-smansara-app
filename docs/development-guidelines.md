---
layout: default
title: Development Guidelines
permalink: /docs/development-guidelines/
---

# Development Guidelines

This document outlines the coding standards, best practices, and development workflows for the IKA Smansara Flutter project. Following these guidelines ensures consistent, maintainable, and high-quality code.

## 📝 Code Style & Conventions

### Naming Conventions

#### Files and Directories
- **PascalCase**: Classes, enums, typedefs (`CampaignDocument`, `Result`)
- **camelCase**: Functions, variables, parameters (`getCampaigns`, `campaignName`)
- **snake_case**: Files and directories (`campaign_repository.dart`, `domain/entities/`)
- **UPPER_SNAKE_CASE**: Constants (`API_KEY`, `DATABASE_ID`)

#### Examples
```dart
// ✅ Correct
class CampaignDocument extends _$CampaignDocument {
  const factory CampaignDocument({
    required String campaignName,
    required String description,
    required int goalAmount,
  }) = _CampaignDocument;
}

const String apiKey = 'your_api_key';
final List<CampaignDocument> campaigns = [];

// ❌ Incorrect
class campaigndocument extends _$campaigndocument {
  const factory campaigndocument({
    required String CampaignName,
    required String Description,
    required int goalamount,
  }) = _campaigndocument;
}

const String APIKEY = 'your_api_key';
final List<CampaignDocument> CAMPAIGNS = [];
```

### Import Organization

Organize imports in this order:
1. **Flutter/Dart imports** (material, foundation, etc.)
2. **Third-party packages** (riverpod, freezed, etc.)
3. **Project imports** (relative imports only)

```dart
// ✅ Correct
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/campaign_document.dart';
import '../../domain/usecases/get_campaigns.dart';
import '../providers/campaign_providers.dart';

// ❌ Incorrect - Mixed import order
import '../../domain/entities/campaign_document.dart';
import 'package:flutter/material.dart';
import '../providers/campaign_providers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
```

### Code Formatting

#### Line Length
- **Maximum 80 characters** per line
- Break long lines appropriately
- Use trailing commas for better formatting

```dart
// ✅ Correct
@freezed
class CampaignDocument with _$CampaignDocument {
  factory CampaignDocument({
    String? id,
    required String campaignName,
    required String description,
    required int goalAmount,
    int? currentAmount,
    List<String>? categories,
  }) = _CampaignDocument;

  factory CampaignDocument.fromJson(Map<String, dynamic> json) =>
      _$CampaignDocumentFromJson(json);
}

// ❌ Incorrect - Line too long
@freezed class CampaignDocument with _$CampaignDocument { factory CampaignDocument({ String? id, required String campaignName, required String description, required int goalAmount, int? currentAmount, List<String>? categories, }) = _CampaignDocument; factory CampaignDocument.fromJson(Map<String, dynamic> json) => _$CampaignDocumentFromJson(json); }
```

#### Braces and Spacing
- **Always use braces** for control structures
- **Single space** after keywords
- **No space** before semicolons

```dart
// ✅ Correct
if (campaign != null) {
  return campaign;
} else {
  return null;
}

for (final campaign in campaigns) {
  print(campaign.campaignName);
}

// ❌ Incorrect
if (campaign != null)
  return campaign;
else
  return null;

for(final campaign in campaigns){
  print(campaign.campaignName);
}
```

### Null Safety

- **Always use nullable types** when appropriate
- **Use `late`** for variables initialized later
- **Use `required`** for named parameters that cannot be null
- **Use null-aware operators** (`?.`, `??`, `!..`)

```dart
// ✅ Correct
class CampaignCard extends StatelessWidget {
  const CampaignCard({
    super.key,
    required this.campaign,
  });

  final CampaignDocument campaign;

  @override
  Widget build(BuildContext context) {
    final progress = campaign.currentAmount / campaign.goalAmount;
    final percentage = (progress * 100).round();

    return Card(
      child: Column(
        children: [
          Text(campaign.campaignName),
          Text('${percentage}% funded'),
          if (campaign.imageUrl != null) ...[
            Image.network(campaign.imageUrl!),
          ],
        ],
      ),
    );
  }
}

// ❌ Incorrect
class CampaignCard extends StatelessWidget {
  const CampaignCard(this.campaign, {super.key});

  final CampaignDocument campaign;

  @override
  Widget build(BuildContext context) {
    final progress = campaign.currentAmount / campaign.goalAmount;
    final percentage = (progress * 100).round();

    return Card(
      child: Column(
        children: [
          Text(campaign.campaignName),
          Text('${percentage}% funded'),
          Image.network(campaign.imageUrl), // Could be null!
        ],
      ),
    );
  }
}
```

## 🏗️ Architecture Guidelines

### Clean Architecture Layers

#### Domain Layer Rules
- **No external dependencies** (Flutter, Appwrite, etc.)
- **Pure business logic** only
- **Entities must be immutable** (use Freezed)
- **Use cases contain business rules**

```dart
// ✅ Correct - Domain layer
@freezed
class CampaignDocument with _$CampaignDocument {
  factory CampaignDocument({
    String? id,
    required String campaignName,
    required String description,
    required int goalAmount,
  }) = _CampaignDocument;

  factory CampaignDocument.fromJson(Map<String, dynamic> json) =>
      _$CampaignDocumentFromJson(json);
}

class CreateCampaign implements UseCase<CampaignDocument, CreateCampaignParams> {
  @override
  Future<Result<CampaignDocument>> call(CreateCampaignParams params) async {
    if (params.campaignName.isEmpty) {
      return Result.failed('Campaign name cannot be empty');
    }

    if (params.goalAmount <= 0) {
      return Result.failed('Goal amount must be positive');
    }

    // Business logic here
    return repository.createCampaign(params);
  }
}
```

#### Data Layer Rules
- **Implement repository interfaces** from domain
- **Handle external service communication**
- **Transform data** between external and domain formats
- **Handle errors** from external services

```dart
// ✅ Correct - Data layer
class AppwriteCampaignRepository implements CampaignRepository {
  final Databases _databases;

  @override
  Future<Result<CampaignDocument>> createCampaign(CreateCampaignParams params) async {
    try {
      final document = await _databases.createDocument(
        databaseId: databaseId,
        collectionId: campaignCollectionId,
        documentId: ID.unique(),
        data: {
          'campaignName': params.campaignName,
          'description': params.description,
          'goalAmount': params.goalAmount,
          'currentAmount': 0,
          'status': 'active',
        },
      );

      return Result.success(CampaignDocument.fromJson(document.data));
    } catch (e) {
      return Result.failed('Failed to create campaign: $e');
    }
  }
}
```

#### Presentation Layer Rules
- **Use Riverpod** for state management
- **Keep widgets focused** on UI logic
- **Use providers** for business logic access
- **Handle UI state** (loading, error, success)

```dart
// ✅ Correct - Presentation layer
@riverpod
Future<CampaignDocument?> getCampaignDetail(
  GetCampaignDetailRef ref, {
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

class CampaignDetailPage extends ConsumerWidget {
  const CampaignDetailPage({super.key, required this.campaignId});

  final String campaignId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final campaignAsync = ref.watch(
      getCampaignDetailProvider(campaignId: campaignId),
    );

    return campaignAsync.when(
      data: (campaign) => campaign != null
          ? CampaignDetailView(campaign)
          : const NotFoundView(),
      loading: () => const LoadingView(),
      error: (error, stack) => ErrorView(
        error: error,
        onRetry: () => ref.invalidate(
          getCampaignDetailProvider(campaignId: campaignId),
        ),
      ),
    );
  }
}
```

### Dependency Injection

#### Provider Setup
- **Use `@riverpod`** for automatic provider generation
- **Keep providers focused** on single responsibilities
- **Use `keepAlive`** for persistent services
- **Override providers** in tests

```dart
// ✅ Correct
@riverpod
CampaignRepository campaignRepository(CampaignRepositoryRef ref) {
  return AppwriteCampaignRepository(
    databases: ref.watch(databasesProvider),
    storage: ref.watch(storageProvider),
  );
}

@Riverpod(keepAlive: true)
AppwriteClient appwriteClient(AppwriteClientRef ref) {
  return AppwriteClient()
      .setEndpoint(Constants.baseUrl)
      .setProject(Constants.projectId);
}

// ❌ Incorrect - Mixed responsibilities
@riverpod
CampaignRepository campaignRepository(CampaignRepositoryRef ref) {
  final client = AppwriteClient()
      .setEndpoint(Constants.baseUrl)
      .setProject(Constants.projectId);

  return AppwriteCampaignRepository(
    databases: Databases(client),
    storage: Storage(client),
  );
}
```

## 🧪 Testing Guidelines

### Test Structure
- **Follow AAA pattern**: Arrange, Act, Assert
- **Test one thing** per test
- **Use descriptive names**
- **Mock external dependencies**

```dart
// ✅ Correct
void main() {
  late CreateCampaign usecase;
  late MockCampaignRepository mockRepository;

  setUp(() {
    mockRepository = MockCampaignRepository();
    usecase = CreateCampaign(campaignRepository: mockRepository);
  });

  group('CreateCampaign', () {
    test('should return CampaignDocument when repository returns Success', () async {
      // Arrange
      const tParams = CreateCampaignParams(
        campaignName: 'Test Campaign',
        description: 'Test description',
        goalAmount: 1000000,
      );

      const tCampaign = CampaignDocument(
        id: 'test_id',
        campaignName: 'Test Campaign',
        description: 'Test description',
        goalAmount: 1000000,
      );

      when(mockRepository.createCampaign(
        campaignName: anyNamed('campaignName'),
        description: anyNamed('description'),
        goalAmount: anyNamed('goalAmount'),
      )).thenAnswer((_) async => Result.success(tCampaign));

      // Act
      final result = await usecase.call(tParams);

      // Assert
      expect(result.isSuccess, true);
      expect(result.resultValue, tCampaign);
      verify(mockRepository.createCampaign(
        campaignName: tParams.campaignName,
        description: tParams.description,
        goalAmount: tParams.goalAmount,
      )).called(1);
    });
  });
}
```

### Coverage Goals
- **Domain Layer**: 95% minimum
- **Data Layer**: 85% minimum
- **Presentation Layer**: 85% minimum
- **Overall**: 90% minimum

## 🔒 Security Guidelines

### API Key Management
- **Never commit secrets** to version control
- **Use environment variables** for configuration
- **Validate input data** on both client and server
- **Use HTTPS** for all API communications

```dart
// ✅ Correct - Environment-based configuration
class Constants {
  static String get baseUrl => const String.fromEnvironment('BASE_URL');
  static String get projectId => const String.fromEnvironment('PROJECT_ID');
  static String get apiKey => const String.fromEnvironment('API_KEY');
}

// ❌ Incorrect - Hardcoded secrets
class Constants {
  static const String baseUrl = 'https://cloud.appwrite.io/v1';
  static const String projectId = 'my-secret-project-id';
  static const String apiKey = 'my-secret-api-key';
}
```

### Input Validation
- **Validate user input** before processing
- **Sanitize data** to prevent injection attacks
- **Use server-side validation** as primary defense
- **Provide clear error messages**

```dart
// ✅ Correct - Input validation
class CreateCampaign implements UseCase<CampaignDocument, CreateCampaignParams> {
  @override
  Future<Result<CampaignDocument>> call(CreateCampaignParams params) async {
    // Validate input
    if (params.campaignName.trim().isEmpty) {
      return Result.failed('Campaign name cannot be empty');
    }

    if (params.campaignName.length > 100) {
      return Result.failed('Campaign name cannot exceed 100 characters');
    }

    if (params.goalAmount <= 0) {
      return Result.failed('Goal amount must be positive');
    }

    if (params.goalAmount > 100000000) {
      return Result.failed('Goal amount cannot exceed 100 million');
    }

    // Sanitize input
    final sanitizedParams = params.copyWith(
      campaignName: params.campaignName.trim(),
      description: params.description.trim(),
    );

    return await repository.createCampaign(sanitizedParams);
  }
}
```

## 🚀 Performance Guidelines

### Widget Optimization
- **Use `const`** constructors when possible
- **Avoid unnecessary rebuilds** with `select`
- **Use `ListView.builder`** for long lists
- **Implement pagination** for large datasets

```dart
// ✅ Correct - Optimized widget
class CampaignList extends ConsumerWidget {
  const CampaignList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final campaignsAsync = ref.watch(getCampaignsProvider);

    return campaignsAsync.when(
      data: (campaigns) => ListView.builder(
        itemCount: campaigns.length,
        itemBuilder: (context, index) {
          final campaign = campaigns[index];
          return CampaignCard(key: ValueKey(campaign.id), campaign: campaign);
        },
      ),
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => ErrorView(error: error),
    );
  }
}

// ❌ Incorrect - Inefficient rebuilds
class CampaignList extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final campaignsAsync = ref.watch(getCampaignsProvider);

    return campaignsAsync.when(
      data: (campaigns) => ListView(
        children: campaigns.map((campaign) {
          return CampaignCard(campaign: campaign); // No keys!
        }).toList(),
      ),
      loading: CircularProgressIndicator(), // Not const!
      error: (error, stack) => Text(error.toString()), // Poor error handling
    );
  }
}
```

### Provider Optimization
- **Use `select`** to prevent unnecessary rebuilds
- **Cache expensive operations**
- **Use family providers** for parameterized data
- **Implement debouncing** for search operations

```dart
// ✅ Correct - Optimized provider
@riverpod
Future<List<CampaignDocument>> searchCampaigns(
  SearchCampaignsRef ref, {
  required String query,
}) async {
  // Debounce search
  await Future.delayed(const Duration(milliseconds: 300));

  final link = ref.keepAlive();
  ref.onDispose(() => link.close());

  if (query.isEmpty) return [];

  final result = await ref.read(searchCampaignsUseCaseProvider)(
    SearchCampaignsParams(query: query),
  );

  return switch (result) {
    Success(value: final campaigns) => campaigns,
    Failed(message: _) => [],
  };
}

// In widget - only rebuilds when search results change
final searchResults = ref.watch(searchCampaignsProvider(query: searchQuery));
```

## 📝 Documentation Guidelines

### Code Comments
- **Document public APIs** with doc comments
- **Explain complex business logic**
- **Use TODO comments** for future improvements
- **Keep comments up-to-date**

```dart
// ✅ Correct - Well documented
/// Creates a new campaign with the provided parameters.
///
/// This use case validates the input data, ensures business rules are met,
/// and coordinates with the repository to persist the campaign.
///
/// Returns a [Result] containing the created [CampaignDocument] on success,
/// or an error message on failure.
///
/// Business rules:
/// - Campaign name cannot be empty or exceed 100 characters
/// - Goal amount must be positive and not exceed 100 million
/// - Description is optional but recommended
class CreateCampaign implements UseCase<CampaignDocument, CreateCampaignParams> {
  final CampaignRepository campaignRepository;

  CreateCampaign({required this.campaignRepository});

  @override
  Future<Result<CampaignDocument>> call(CreateCampaignParams params) async {
    // Validate campaign name
    if (params.campaignName.trim().isEmpty) {
      return Result.failed('Campaign name cannot be empty');
    }

    // TODO: Add campaign name uniqueness validation
    // TODO: Implement campaign category validation

    return await campaignRepository.createCampaign(
      campaignName: params.campaignName.trim(),
      description: params.description.trim(),
      goalAmount: params.goalAmount,
    );
  }
}
```

### Commit Messages
- **Use conventional commits**
- **Be descriptive but concise**
- **Reference issues when applicable**

```bash
# ✅ Correct commit messages
feat: add campaign creation functionality
fix: resolve payment gateway timeout issue
docs: update API integration documentation
refactor: restructure campaign repository for better error handling
test: add unit tests for campaign validation
chore: update Flutter dependencies

# ❌ Incorrect commit messages
fixed bug
updated code
changes
```

## 🔄 Development Workflow

### Feature Development
1. **Create feature branch** from `main`
2. **Implement following TDD** (write tests first)
3. **Follow architectural layers** (Domain → Data → Presentation)
4. **Run tests** and ensure coverage
5. **Code review** and address feedback
6. **Merge** with squash commits

### Code Review Checklist
- [ ] **Architecture**: Follows Clean Architecture principles
- [ ] **Tests**: Adequate test coverage and passing tests
- [ ] **Style**: Follows code style guidelines
- [ ] **Security**: No security vulnerabilities
- [ ] **Performance**: No performance issues
- [ ] **Documentation**: Code is well-documented

### Pull Request Template
```markdown
## Description
Brief description of the changes made.

## Type of Change
- [ ] Bug fix (non-breaking change)
- [ ] New feature (non-breaking change)
- [ ] Breaking change
- [ ] Documentation update

## Testing
- [ ] Unit tests added/updated
- [ ] Widget tests added/updated
- [ ] Integration tests added/updated
- [ ] Manual testing completed

## Checklist
- [ ] Code follows style guidelines
- [ ] Tests pass locally
- [ ] Documentation updated
- [ ] No security issues introduced
```

## 🛠️ Tooling & Automation

### Code Generation
- **Use build_runner** for code generation
- **Regenerate** after schema changes
- **Watch mode** during development

```bash
# Generate code
dart run build_runner build

# Watch mode for continuous generation
dart run build_runner watch

# Clean and rebuild
dart run build_runner clean && dart run build_runner build
```

### Linting & Analysis
- **Run analyzer** before commits
- **Fix linting issues** automatically
- **Use custom_lint** for project-specific rules

```bash
# Analyze code
flutter analyze

# Run custom lint rules
dart run custom_lint
```

### Pre-commit Hooks
Consider using pre-commit hooks to automate checks:

```bash
#!/bin/bash
# .git/hooks/pre-commit

# Run tests
flutter test

# Run analyzer
flutter analyze

# Run custom lint
dart run custom_lint

# Check formatting
dart format --set-exit-if-changed lib/
```

These guidelines ensure that the IKA Smansara codebase remains maintainable, scalable, and high-quality as the project grows.