---
layout: default
title: Architecture Overview
permalink: /docs/architecture/
---

# Architecture Overview

IKA Smansara follows Clean Architecture principles with a clear separation of concerns across three main layers: Presentation, Domain, and Data. This architecture ensures maintainability, testability, and scalability.

## 🏗️ Clean Architecture Layers

### Presentation Layer (`lib/presentation/`)

The Presentation layer handles all UI-related concerns and user interactions.

#### Structure
```
presentation/
├── pages/           # Screen widgets (full pages)
├── providers/       # Riverpod state management
├── widgets/         # Reusable UI components
├── extensions/      # UI extensions and utilities
└── misc/           # Helper classes and utilities
```

#### Key Components

**Pages**: Full-screen widgets that represent complete user interfaces
- `login_page.dart` - User authentication
- `campaign_detail_page.dart` - Campaign viewing
- `checkout_page.dart` - Payment processing

**Providers**: Riverpod providers that manage state and business logic
```dart
@riverpod
Future<List<CampaignDocument>> getCampaigns(GetCampaignsRef ref) async {
  final result = await ref.read(getCampaignsUseCaseProvider)();
  return switch (result) {
    Success(value: final campaigns) => campaigns,
    Failed(message: _) => [],
  };
}
```

**Widgets**: Reusable UI components
- `campaign_card.dart` - Campaign display card
- `bottom_nav_bar.dart` - Navigation component
- `donation_form.dart` - Donation input form

### Domain Layer (`lib/domain/`)

The Domain layer contains business logic and rules, independent of any external frameworks.

#### Structure
```
domain/
├── entities/        # Data models (Freezed classes)
└── usecases/        # Business logic use cases
```

#### Entities

All entities use Freezed for immutable data models with automatic JSON serialization:

```dart
@freezed
class CampaignDocument with _$CampaignDocument {
  factory CampaignDocument({
    String? id,
    required String campaignName,
    required String description,
    required int goalAmount,
    @Default(0) int currentAmount,
    String? imageUrl,
    @Default([]) List<String> categories,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _CampaignDocument;

  factory CampaignDocument.fromJson(Map<String, dynamic> json) =>
      _$CampaignDocumentFromJson(json);
}
```

#### Use Cases

Use cases encapsulate business logic and orchestrate data operations:

```dart
class CreateCampaign implements UseCase<CampaignDocument, CreateCampaignParams> {
  final CampaignRepository campaignRepository;

  CreateCampaign({required this.campaignRepository});

  @override
  Future<Result<CampaignDocument>> call(CreateCampaignParams params) async {
    // Business logic validation
    if (params.campaignName.isEmpty) {
      return Result.failed('Campaign name cannot be empty');
    }

    // Repository interaction
    return await campaignRepository.createCampaign(
      campaignName: params.campaignName,
      description: params.description,
      goalAmount: params.goalAmount,
      // ... other parameters
    );
  }
}
```

### Data Layer (`lib/data/`)

The Data layer handles external data sources and provides implementations for domain interfaces.

#### Structure
```
data/
├── repositories/      # Repository interfaces and implementations
├── appwrite/         # Appwrite service implementations
├── payment_gateway/  # Payment service implementations
├── payout_gateway/   # Payout service implementations
└── helpers/          # Network clients and utilities
```

#### Repository Pattern

Repositories abstract data access and provide a consistent interface:

```dart
abstract class CampaignRepository {
  Future<Result<CampaignDocument>> createCampaign({
    required String campaignName,
    required String description,
    required int goalAmount,
    // ... other parameters
  });

  Future<Result<List<CampaignDocument>>> getCampaigns({
    int? limit,
    int? offset,
    String? category,
  });

  Future<Result<CampaignDocument?>> getCampaignDetail({
    required String campaignId,
  });
}
```

#### Appwrite Implementation

Concrete implementations handle external service interactions:

```dart
class AppwriteCampaignRepository implements CampaignRepository {
  final Databases _databases;
  final Storage _storage;

  @override
  Future<Result<CampaignDocument>> createCampaign({...}) async {
    try {
      final document = await _databases.createDocument(
        databaseId: databaseId,
        collectionId: campaignCollectionId,
        documentId: ID.unique(),
        data: {
          'campaignName': campaignName,
          'description': description,
          'goalAmount': goalAmount,
          // ... other fields
        },
      );

      return Result.success(CampaignDocument.fromJson(document.data));
    } catch (e) {
      return Result.failed('Failed to create campaign: $e');
    }
  }
}
```

## 🔄 Data Flow

### Request Flow
1. **UI Event** → User interacts with a widget
2. **Provider** → Riverpod provider handles the event
3. **Use Case** → Business logic validation and processing
4. **Repository** → Data access abstraction
5. **External Service** → Appwrite, Midtrans, or Firebase API calls
6. **Response** → Data flows back through the layers
7. **UI Update** → Provider updates state, UI re-renders

### Example: Creating a Campaign

```dart
// 1. UI Layer - User submits form
onPressed: () => ref.read(createCampaignProvider.notifier).createCampaign(formData)

// 2. Provider Layer - Orchestrates the operation
@riverpod
class CreateCampaignNotifier extends _$CreateCampaignNotifier {
  @override
  Future<CampaignDocument?> build() async => null;

  Future<void> createCampaign(CreateCampaignParams params) async {
    state = const AsyncLoading();

    final result = await ref.read(createCampaignUseCaseProvider)(params);

    state = switch (result) {
      Success(value: final campaign) => AsyncData(campaign),
      Failed(message: final error) => AsyncError(error, StackTrace.current),
    };
  }
}

// 3. Use Case Layer - Business logic
class CreateCampaign implements UseCase<CampaignDocument, CreateCampaignParams> {
  // Implementation with validation and business rules
}

// 4. Repository Layer - Data access
class AppwriteCampaignRepository implements CampaignRepository {
  // Implementation with Appwrite integration
}
```

## 🏭 Dependency Injection

The app uses Riverpod for dependency injection and state management:

### Provider Setup
```dart
// Repository Providers
@riverpod
CampaignRepository campaignRepository(CampaignRepositoryRef ref) {
  return AppwriteCampaignRepository(
    databases: ref.watch(databasesProvider),
    storage: ref.watch(storageProvider),
  );
}

// Use Case Providers
@riverpod
CreateCampaign createCampaignUseCase(CreateCampaignUseCaseRef ref) {
  return CreateCampaign(
    campaignRepository: ref.watch(campaignRepositoryProvider),
  );
}

// UI Providers
@riverpod
Future<List<CampaignDocument>> getCampaigns(GetCampaignsRef ref) async {
  return await ref.watch(getCampaignsUseCaseProvider)();
}
```

## 🧪 Testing Strategy

Each layer has corresponding tests:

### Unit Tests
- **Domain**: Entity and Use Case testing
- **Data**: Repository implementation testing with mocks
- **Presentation**: Provider and widget testing

### Integration Tests
- Full feature workflows
- External service integrations
- End-to-end user scenarios

## 🔒 Error Handling

The app uses a Result pattern for consistent error handling:

```dart
sealed class Result<T> {
  const Result();

  factory Result.success(T value) = Success<T>;
  factory Result.failed(String message) = Failed<T>;
}

class Success<T> extends Result<T> {
  final T value;
  const Success(this.value);
}

class Failed<T> extends Result<T> {
  final String message;
  const Failed(this.message);
}
```

## 🚀 Benefits of This Architecture

- **Testability**: Each layer can be tested in isolation
- **Maintainability**: Clear separation of concerns
- **Scalability**: Easy to add new features without affecting existing code
- **Flexibility**: Can swap implementations (e.g., different databases)
- **Readability**: Code is organized and easy to understand
- **Reusability**: Components can be reused across features

## 📚 Related Documentation

- [State Management Guide](state-management.md) - Deep dive into Riverpod
- [API Integration Guide](api-integration.md) - External service integrations
- [Testing Strategy](testing-strategy.md) - Comprehensive testing approach
- [Development Guidelines](development-guidelines.md) - Coding standards