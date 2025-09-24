---
layout: default
title: State Management Guide
permalink: /docs/state-management/
---

# State Management Guide

IKA Smansara uses Riverpod for state management, providing a robust, type-safe, and testable approach to managing application state across the Clean Architecture layers.

## 🏞️ Riverpod Overview

Riverpod is a reactive state management library that provides:
- **Compile-time safety** with dependency injection
- **Testability** with provider overrides
- **Performance** with automatic dependency tracking
- **Flexibility** with multiple provider types

## 🏗️ Provider Architecture

### Provider Types Used

#### 1. `@riverpod` - Basic Providers

Used for simple state management and dependency injection:

```dart
@riverpod
CampaignRepository campaignRepository(CampaignRepositoryRef ref) {
  return AppwriteCampaignRepository(
    databases: ref.watch(databasesProvider),
    storage: ref.watch(storageProvider),
  );
}

@riverpod
CreateCampaign createCampaignUseCase(CreateCampaignUseCaseRef ref) {
  return CreateCampaign(
    campaignRepository: ref.watch(campaignRepositoryProvider),
  );
}
```

#### 2. `@Riverpod(keepAlive: true)` - Persistent Providers

Used for services that should persist throughout the app lifecycle:

```dart
@Riverpod(keepAlive: true)
AppwriteClient appwriteClient(AppwriteClientRef ref) {
  return AppwriteClient()
      .setEndpoint(Constants.baseUrl)
      .setProject(Constants.projectId);
}

@Riverpod(keepAlive: true)
Databases databases(DatabasesRef ref) {
  return Databases(ref.watch(appwriteClientProvider));
}
```

#### 3. Future Providers - Async Operations

Used for asynchronous data fetching:

```dart
@riverpod
Future<List<CampaignDocument>> getCampaigns(GetCampaignsRef ref) async {
  final result = await ref.read(getCampaignsUseCaseProvider)();
  return switch (result) {
    Success(value: final campaigns) => campaigns,
    Failed(message: _) => [],
  };
}

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
```

#### 4. Notifier Providers - Complex State Management

Used for complex state with multiple operations:

```dart
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

  void reset() {
    state = const AsyncData(null);
  }
}
```

#### 5. StateNotifier Providers - Legacy Support

Used for complex state management (less preferred than Notifier):

```dart
@riverpod
class AuthStateNotifier extends _$AuthStateNotifier {
  @override
  AuthState build() => AuthState.initial();

  Future<void> login(String email, String password) async {
    state = state.copyWith(isLoading: true, error: null);

    final result = await ref.read(loginUseCaseProvider)(
      LoginParams(email: email, password: password),
    );

    state = switch (result) {
      Success(value: final user) => AuthState.authenticated(user),
      Failed(message: final error) => state.copyWith(
          isLoading: false,
          error: error,
        ),
    };
  }

  void logout() {
    state = AuthState.initial();
  }
}
```

## 🎯 State Classes

### AsyncValue Pattern

Riverpod uses `AsyncValue` for handling asynchronous states:

```dart
class CampaignListScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final campaignsAsync = ref.watch(getCampaignsProvider);

    return campaignsAsync.when(
      data: (campaigns) => CampaignList(campaigns: campaigns),
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => ErrorWidget(
        error: error,
        onRetry: () => ref.invalidate(getCampaignsProvider),
      ),
    );
  }
}
```

### Custom State Classes

For complex state management:

```dart
@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated(UserDocument user) = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.error(String message) = _Error;

  const AuthState._();

  bool get isLoading => this is _Loading;
  bool get isAuthenticated => this is _Authenticated;
  UserDocument? get user => this is _Authenticated ? (this as _Authenticated).user : null;
}
```

## 🔄 Provider Lifecycle

### Provider Scopes

#### App-wide Providers
```dart
void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}
```

#### Screen-specific Providers
```dart
class CampaignDetailPage extends ConsumerWidget {
  final String campaignId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Provider is automatically scoped to this widget
    final campaignAsync = ref.watch(
      getCampaignDetailProvider(campaignId: campaignId),
    );

    return campaignAsync.when(
      data: (campaign) => CampaignDetailView(campaign: campaign),
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => ErrorView(error: error),
    );
  }
}
```

### Auto-disposal

Providers are automatically disposed when no longer needed:

```dart
@riverpod
Future<CampaignDocument?> getCampaignDetail(
  GetCampaignDetailRef ref, {
  required String campaignId,
}) async {
  // Provider will be disposed when widget is removed
  final result = await ref.read(getCampaignDetailUseCaseProvider)(
    GetCampaignDetailParams(campaignId: campaignId),
  );
  return switch (result) {
    Success(value: final campaign) => campaign,
    Failed(message: _) => null,
  };
}
```

## 🧪 Testing Providers

### Unit Testing Providers

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

  test('getCampaignsProvider returns campaigns on success', () async {
    // Arrange
    when(mockRepository.getCampaigns())
        .thenAnswer((_) async => Result.success([tCampaignDocument]));

    // Override the repository provider
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
}
```

### Widget Testing with Riverpod

```dart
void main() {
  testWidgets('CampaignList displays campaigns', (tester) async {
    // Create mock repository
    final mockRepository = MockCampaignRepository();
    when(mockRepository.getCampaigns())
        .thenAnswer((_) async => Result.success([tCampaignDocument]));

    // Build widget with provider overrides
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          campaignRepositoryProvider.overrideWithValue(mockRepository),
        ],
        child: const MaterialApp(home: CampaignListScreen()),
      ),
    );

    // Wait for async operations
    await tester.pump();

    // Verify UI
    expect(find.text('Test Campaign'), findsOneWidget);
  });
}
```

## 🔧 Advanced Patterns

### Provider Composition

Combine multiple providers for complex logic:

```dart
@riverpod
Future<CampaignSummary> getCampaignSummary(
  GetCampaignSummaryRef ref, {
  required String campaignId,
}) async {
  final campaignAsync = ref.watch(getCampaignDetailProvider(campaignId: campaignId));
  final backersAsync = ref.watch(getCampaignBackersProvider(campaignId: campaignId));

  final results = await Future.wait([campaignAsync, backersAsync]);

  final campaign = results[0] as CampaignDocument?;
  final backers = results[1] as List<BackerDocument>;

  if (campaign == null) return null;

  return CampaignSummary(
    campaign: campaign,
    backerCount: backers.length,
    totalRaised: backers.fold(0, (sum, backer) => sum + backer.amount),
  );
}
```

### Provider Families

Create parameterized providers:

```dart
@riverpod
Future<List<CampaignDocument>> getCampaignsByCategory(
  GetCampaignsByCategoryRef ref, {
  required String category,
}) async {
  final result = await ref.read(getCampaignsUseCaseProvider)(
    GetCampaignsParams(category: category),
  );
  return switch (result) {
    Success(value: final campaigns) => campaigns,
    Failed(message: _) => [],
  };
}

// Usage in widget
final educationCampaignsAsync = ref.watch(
  getCampaignsByCategoryProvider(category: 'education'),
);
```

### Provider Selectors

Optimize rebuilds by selecting specific parts of state:

```dart
@riverpod
class CampaignFormNotifier extends _$CampaignFormNotifier {
  @override
  CampaignFormState build() => const CampaignFormState();

  void updateTitle(String title) {
    state = state.copyWith(title: title);
  }

  void updateDescription(String description) {
    state = state.copyWith(description: description);
  }
}

// In widget - only rebuilds when title changes
final title = ref.watch(
  campaignFormNotifierProvider.select((state) => state.title),
);
```

## 🚀 Performance Optimization

### Provider Splitting

Split large providers into smaller, focused ones:

```dart
// Instead of one large provider
@riverpod
class CampaignDetailNotifier extends _$CampaignDetailNotifier {
  @override
  CampaignDetailState build(String campaignId) {
    // Complex initialization
  }
}

// Use multiple focused providers
@riverpod
Future<CampaignDocument?> getCampaignDetail(GetCampaignDetailRef ref, {
  required String campaignId,
}) async {
  // Focused on data fetching
}

@riverpod
class CampaignActionsNotifier extends _$CampaignActionsNotifier {
  @override
  CampaignActionsState build(String campaignId) {
    // Focused on actions
  }
}
```

### Debouncing

Prevent excessive API calls:

```dart
@riverpod
Future<List<CampaignDocument>> searchCampaigns(
  SearchCampaignsRef ref, {
  required String query,
}) async {
  // Debounce search queries
  await Future.delayed(const Duration(milliseconds: 300));

  // Cancel previous request if new one comes in
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
```

### Caching

Cache expensive operations:

```dart
@riverpod
Future<List<CategoryDocument>> getCategories(GetCategoriesRef ref) async {
  // Cache for 5 minutes
  final cached = await ref.watch(cacheProvider).get('categories');
  if (cached != null) return cached;

  final result = await ref.read(getCategoriesUseCaseProvider)();
  final categories = switch (result) {
    Success(value: final categories) => categories,
    Failed(message: _) => [],
  };

  // Cache the result
  ref.watch(cacheProvider).set('categories', categories, Duration(minutes: 5));

  return categories;
}
```

## 🐛 Debugging

### ProviderObserver

Monitor provider lifecycle:

```dart
class LoggerObserver extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    Constants.logger.d('''
Provider ${provider.name ?? provider.runtimeType} updated:
  Previous: $previousValue
  New: $newValue
''');
  }

  @override
  void didDisposeProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) {
    Constants.logger.d('Provider ${provider.name ?? provider.runtimeType} disposed');
  }
}

// In main.dart
void main() {
  runApp(
    ProviderScope(
      observers: [LoggerObserver()],
      child: MyApp(),
    ),
  );
}
```

### DevTools Integration

Use Riverpod DevTools for debugging:

```dart
void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

// In development, add DevTools
if (kDebugMode) {
  // Enable Riverpod DevTools
}
```

## 📚 Best Practices

### 1. Provider Naming
- Use descriptive names: `getCampaignsProvider` not `campaignsProvider`
- Follow consistent patterns: `verbNounProvider`
- Use family parameters for dynamic providers

### 2. Error Handling
- Always handle errors in UI with proper fallbacks
- Use `AsyncError` for async operation failures
- Provide retry mechanisms for failed operations

### 3. Performance
- Use `select` to prevent unnecessary rebuilds
- Split large providers into smaller ones
- Implement caching for expensive operations
- Use `keepAlive` sparingly

### 4. Testing
- Test providers in isolation with overrides
- Mock dependencies for unit tests
- Test error states and loading states
- Use `ProviderContainer` for provider testing

### 5. Code Organization
- Group related providers together
- Use separate files for complex providers
- Document complex provider logic
- Follow the established architectural patterns

This comprehensive state management approach ensures that IKA Smansara maintains clean, testable, and performant code while providing a great user experience.