# IKA Smansara - Crowdfunding Platform 🏛️

A comprehensive Flutter application for IKA Smansara, a crowdfunding platform that connects donors with various charitable campaigns and social initiatives.

## 📋 Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Prerequisites](#prerequisites)
- [Installation & Setup](#installation--setup)
- [Project Structure](#project-structure)
- [Architecture](#architecture)
- [Development Workflow](#development-workflow)
- [Building & Running](#building--running)
- [Running with VSCode](#running-with-vscode)
- [Testing](#testing)
- [Contributing](#contributing)
- [Troubleshooting](#troubleshooting)
- [API Documentation](#api-documentation)

## 🎯 Overview

IKA Smansara is a mobile application built with Flutter that serves as a crowdfunding platform for various charitable and social initiatives. The app allows users to:
- Browse and donate to charitable campaigns
- Create and manage their own campaigns
- Track donation progress and impact
- Manage payment transactions securely
- Connect with other donors and beneficiaries

## ✨ Features

### 🏦 Campaign Management
- Browse active campaigns by category
- View detailed campaign information
- Create new campaigns with image uploads
- Track campaign progress and donations

### 💳 Payment Integration
- Secure payment processing via Midtrans
- Multiple payment methods support
- Transaction history and receipts
- Payout management for campaign creators

### 👥 User Management
- User registration and authentication via Appwrite
- Profile management with avatar uploads
- Bank account integration for payouts
- Role-based access (donor, campaign creator, admin)

### 📊 Dashboard & Analytics
- Campaign performance metrics
- Donation tracking and analytics
- User activity monitoring
- Real-time notifications via FCM

### 🎨 User Experience
- Responsive design for mobile devices
- Dark/light theme support
- Multi-language support
- Offline capability for key features

## 🛠️ Tech Stack

### Frontend
- **Flutter** 3.32.8 - Cross-platform mobile framework
- **Dart** - Programming language
- **Riverpod** - State management
- **Go Router** - Navigation and routing

### Backend & Services
- **Appwrite** - Backend-as-a-Service (Authentication, Database, Storage)
- **Midtrans** - Payment gateway integration
- **Firebase** - Analytics, Crashlytics, Cloud Messaging
- **Hive** - Local data storage

### Development Tools
- **Freezed** - Code generation for immutable models
- **Retrofit** - HTTP client code generation
- **Riverpod Generator** - State management code generation
- **Custom Lint** - Custom linting rules

### Testing
- **flutter_test** - Unit and widget testing
- **Mockito** - Mocking framework
- **Coverage** - Test coverage reporting

## 📋 Prerequisites

### System Requirements
- **Operating System**: macOS, Windows, or Linux
- **RAM**: Minimum 8GB (16GB recommended)
- **Storage**: 5GB free space
- **Display**: 1920x1080 or higher resolution

### Software Requirements
- **Flutter SDK**: Version 3.32.8 (exactly this version)
- **Dart SDK**: Compatible with Flutter 3.32.8
- **VS Code** (recommended) or **Android Studio** with Flutter extensions
- **Git**: Version control system
- **Java JDK**: Version 11 or higher (for Android development)

### Recommended VSCode Extensions
When using VSCode, install these recommended extensions for optimal development experience:
- **Dart-Code.dart-code**: Official Dart extension
- **Dart-Code.flutter**: Official Flutter extension
- **ms-vscode.vscode-json**: JSON language support
- **redhat.vscode-yaml**: YAML language support
- **streetsidesoftware.code-spell-checker**: Spell checking
- **ms-vscode.vscode-env**: Environment file support
- **eamodio.gitlens**: Enhanced Git capabilities

> 💡 **Tip**: VSCode will automatically recommend these extensions when you open the project

### Version Management Tools
Choose one of the following to manage Flutter versions:
- **[mise](https://mise.jdx.dev/)** (recommended) - Modern version manager
- **[fvm](https://fvm.app/)** - Flutter Version Management

## 🚀 Installation & Setup

### 1. Clone the Repository
```bash
git clone <repository-url>
cd ika-smansara-app
```

### 2. Install Flutter Version Manager
Choose one option:

**Option A: Using mise (Recommended)**
```bash
# Install mise if not already installed
curl https://mise.jdx.dev/install.sh | sh

# Install Flutter 3.32.8
mise install flutter@3.32.8
mise use flutter@3.32.8
```

**Option B: Using fvm**
```bash
# Install fvm globally
flutter pub global activate fvm

# Install Flutter 3.32.8
fvm install 3.32.8
fvm use 3.32.8
```

### 3. Verify Flutter Installation
```bash
flutter --version
# Should show: Flutter 3.32.8 • channel stable
```

### 4. Install Dependencies
```bash
flutter pub get
```

### 5. Generate Code
```bash
# Generate Freezed, Riverpod, JSON serializable, and Retrofit code
dart run build_runner build
```

### 6. Environment Configuration
Create environment files for each flavor:

```bash
# Copy example environment file
cp .env_example assets/development/.env
cp .env_example assets/staging/.env
cp .env_example assets/production/.env
```

**Required Environment Variables:**
```env
API_KEY_PAYMENT_GATEWAY=your_payment_gateway_api_key
PAYMENT_GATEWAY_URL=your_payment_gateway_url
MIDTRANS_CORE_API_URL=your_midtrans_core_api_url
MIDTRANS_API_KEY=your_midtrans_api_key
BASE_URL=your_appwrite_base_url
PROJECT_ID=your_appwrite_project_id
DATABASE_ID=your_appwrite_database_id
# ... and other required variables (see .env_example)
```

### 7. Firebase Configuration
1. Create a Firebase project at [Firebase Console](https://console.firebase.google.com/)
2. Add Android/iOS apps to your Firebase project
3. Download `google-services.json` and place it in `android/app/`
4. Configure Firebase services (Analytics, Crashlytics, Messaging)

### 8. Appwrite Setup
1. Create an Appwrite project at [Appwrite Cloud](https://cloud.appwrite.io/) or self-host
2. Configure databases, collections, and storage buckets
3. Set up authentication providers
4. Update environment variables with Appwrite credentials

## 📁 Project Structure

```
ika-smansara-app/
├── android/                    # Android platform-specific code
├── assets/                     # Static assets
│   ├── images/                # Image assets
│   ├── development/           # Development environment files
│   ├── staging/               # Staging environment files
│   └── production/            # Production environment files
├── lib/                       # Main application code
│   ├── data/                  # Data layer
│   │   ├── appwrite/         # Appwrite implementations
│   │   ├── helpers/          # Network and utility helpers
│   │   ├── payment_gateway/  # Payment gateway implementations
│   │   ├── payout_gateway/   # Payout gateway implementations
│   │   └── repositories/     # Repository interfaces
│   ├── domain/               # Domain layer (Business Logic)
│   │   ├── entities/         # Data models (Freezed)
│   │   └── usecases/         # Business use cases
│   ├── presentation/         # Presentation layer (UI)
│   │   ├── pages/           # Screen widgets
│   │   ├── providers/       # State management (Riverpod)
│   │   ├── widgets/         # Reusable UI components
│   │   └── extensions/      # UI extensions and utilities
│   ├── utils/               # Utility classes and constants
│   ├── app.dart             # Main app widget
│   ├── bootstrap.dart      # App initialization
│   └── main_*.dart         # Flavor-specific entry points
├── test/                     # Test files
│   ├── data/                # Data layer tests
│   ├── domain/              # Domain layer tests
│   ├── presentation/        # Presentation layer tests
│   └── helpers/             # Test utilities
├── android/                  # Android-specific configuration
├── ios/                     # iOS-specific configuration
├── .env_example            # Environment variables template
├── pubspec.yaml            # Flutter dependencies
├── analysis_options.yaml   # Code analysis configuration
├── AGENTS.md              # Agent development guidelines
├── .vscode/               # VSCode configuration files
│   ├── launch.json       # Launch configurations for different environments
│   ├── tasks.json        # Build tasks and commands
│   ├── settings.json     # Workspace settings and preferences
│   ├── extensions.json   # Recommended extensions
│   └── README.md         # VSCode configuration guide
└── README.md              # This file
```

## 🏗️ Architecture

This project follows **Clean Architecture** principles with clear separation of concerns:

### Layers

1. **Presentation Layer** (`lib/presentation/`)
   - UI components and screens
   - State management with Riverpod
   - User interaction handling

2. **Domain Layer** (`lib/domain/`)
   - Business logic and rules
   - Use cases for application features
   - Entity definitions (immutable data models)

3. **Data Layer** (`lib/data/`)
   - Repository implementations
   - External service integrations
   - Data source abstractions

### Key Patterns

- **Dependency Injection**: Riverpod for dependency management
- **Result Pattern**: `Success<T>`/`Failed<T>` for error handling
- **Repository Pattern**: Abstraction over data sources
- **Use Case Pattern**: Business logic encapsulation

## 🔄 Development Workflow

### 1. Feature Development
```bash
# Create a new feature branch
git checkout -b feature/your-feature-name

# Make changes following the architecture
# 1. Create/Update entities in domain/entities/
# 2. Create use cases in domain/usecases/
# 3. Implement repositories in data/repositories/
# 4. Create providers in presentation/providers/
# 5. Build UI in presentation/pages/

# Generate code after changes
dart run build_runner build

# Run tests
flutter test

# Commit changes
git add .
git commit -m "feat: add your feature description"
```

### 2. Code Generation
```bash
# Watch mode for continuous code generation during development
dart run build_runner watch

# Clean and rebuild all generated code
dart run build_runner clean
dart run build_runner build
```

### 3. State Management
```dart
// Example Riverpod provider
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

### 4. VSCode Development
For the best development experience, use the pre-configured VSCode setup:

- **Launch Configurations**: Ready-to-use debug configurations for all flavors
- **Build Tasks**: Automated tasks for common operations (clean, build, test)
- **Hot Reload**: Instant code updates during development
- **Integrated Terminal**: Run Flutter commands directly in VSCode

> 📖 **See [Running with VSCode](#running-with-vscode) for detailed instructions**

## 🏃‍♂️ Building & Running

### Development Mode
```bash
# Run development flavor
flutter run --flavor development --target lib/main_development.dart

# Or use VS Code launch configurations (see below)
```

> 📖 **For detailed VSCode setup and usage, see [Running with VSCode](#running-with-vscode)**

### Staging Mode
```bash
# Run staging flavor
flutter run --flavor staging --target lib/main_staging.dart
```

### Production Mode
```bash
# Run production flavor
flutter run --flavor production --target lib/main_production.dart
```

### Build APK/AAB
```bash
# Build development APK
flutter build apk --flavor development --target lib/main_development.dart

# Build production AAB for Play Store
flutter build appbundle --flavor production --target lib/main_production.dart
```

## 💻 Running with VSCode

This project includes optimized VSCode configurations for easy development and debugging. The `.vscode/` directory contains pre-configured launch configurations and tasks.

### Prerequisites
1. **Install VSCode** with Flutter and Dart extensions
2. **Install recommended extensions** (see `.vscode/extensions.json`)
3. **Configure Flutter SDK path** in `.vscode/settings.json` for your version manager (mise/fvm)

### Launch Configurations

The project includes several launch configurations for different environments:

- **"IKA Smansara - Development"**: Debug mode for development environment
- **"IKA Smansara - Staging"**: Debug mode for staging environment
- **"IKA Smansara - Production"**: Debug mode for production environment
- **"IKA Smansara - Development (Profile)"**: Profile mode for performance analysis
- **"IKA Smansara - Production (Release)"**: Release mode for production testing

### How to Run

#### Method 1: Using Run Panel (Recommended)
1. Open the project in VSCode
2. Click the **Run** icon in the sidebar (play button with bug)
3. Select desired configuration from the dropdown (e.g., "IKA Smansara - Development")
4. Click the green **Play** button or press `F5`

#### Method 2: Using Command Palette
1. Open Command Palette: `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (macOS)
2. Type: "Debug: Select and Start Debugging"
3. Select your desired configuration
4. Press Enter

#### Method 3: Using Terminal
1. Open integrated terminal in VSCode: `Ctrl+Shift+``
2. Run: `flutter run --flavor development --target lib/main_development.dart`

### VSCode Tasks

The project includes several useful tasks accessible via Command Palette:

- **Flutter: Clean**: Clean build artifacts
- **Flutter: Get Dependencies**: Install/update dependencies
- **Flutter: Generate Code**: Run build_runner to generate code
- **Flutter: Watch Code Generation**: Continuous code generation during development
- **Flutter: Analyze**: Run static analysis
- **Flutter: Run Tests**: Execute unit tests
- **Flutter: Run Tests with Coverage**: Run tests with coverage report
- **Flutter: Build Development APK**: Build APK for development
- **Flutter: Build Production APK**: Build APK for production
- **Flutter: Build Production AAB**: Build AAB for Play Store

#### How to Use Tasks
1. Open Command Palette: `Ctrl+Shift+P`
2. Type: "Tasks: Run Task"
3. Select desired task from the list

### Keyboard Shortcuts
- `F5`: Start debugging with selected configuration
- `Ctrl+Shift+P` / `Cmd+Shift+P`: Open Command Palette
- `Ctrl+Shift+B` / `Cmd+Shift+B`: Run build task
- `Ctrl+S` / `Cmd+S`: Save and auto-format

### Hot Reload & Hot Restart
When running the app:
- Press `r` in terminal for **Hot Reload**
- Press `R` (Shift+r) for **Hot Restart**
- Press `Shift+F5` to **Stop debugging**

### Running on Specific Device
```bash
# List available devices
flutter devices

# Run on specific device
flutter run --flavor development --target lib/main_development.dart -d <device_id>
```

### Troubleshooting VSCode

#### Flutter SDK Not Found
1. Check `.vscode/settings.json` for correct Flutter SDK path
2. Ensure mise/fvm is properly configured
3. Restart VSCode

#### Launch Configuration Not Working
1. Verify environment files exist in `assets/*/`
2. Check device/emulator is connected
3. Ensure all dependencies are installed: `flutter pub get`

#### Extensions Not Working
1. Open Extensions panel: `Ctrl+Shift+X`
2. Install missing extensions manually
3. Reload VSCode window: `Ctrl+Shift+P` → "Developer: Reload Window"

### VSCode Configuration Files

- **`.vscode/launch.json`**: Launch configurations for different environments
- **`.vscode/tasks.json`**: Build tasks and commands
- **`.vscode/settings.json`**: Workspace settings and preferences
- **`.vscode/extensions.json`**: Recommended extensions
- **`.vscode/README.md`**: Detailed VSCode configuration guide

## 🧪 Testing

### Test Coverage
- **Domain Layer**: 95% coverage (Entities & Use Cases)
- **Data Layer**: 80% coverage (Repositories & Appwrite Implementation)
- **Presentation Layer**: 80% coverage (Providers, Widgets & Routing)
- **Overall Coverage**: 86%

### Running Tests

```bash
# Run all tests
flutter test

# Run tests with coverage report
flutter test --coverage

# Run specific test file
flutter test test/domain/entities/result_test.dart

# Run tests with verbose output
flutter test -v

# Run tests and generate HTML coverage report
flutter test --coverage && genhtml coverage/lcov.info -o coverage/html
```

### Test Structure
```
test/
├── domain/
│   ├── entities/          # Entity unit tests
│   └── usecases/          # Use case unit tests
├── data/
│   └── repositories/      # Repository implementation tests
├── presentation/
│   ├── providers/         # Provider tests
│   ├── widgets/           # Widget tests
│   └── pages/             # Page integration tests
└── helpers/
    └── test_helper.dart   # Shared test utilities and mocks
```

### Writing Tests
```dart
// Example unit test
void main() {
  late CreateCampaign usecase;
  late MockCampaignRepository mockRepository;

  setUp(() {
    mockRepository = MockCampaignRepository();
    usecase = CreateCampaign(campaignRepository: mockRepository);
  });

  test('should return CampaignDocument when repository returns Success', () async {
    // Arrange
    when(mockRepository.createCampaign(...))
        .thenAnswer((_) async => Result.success(tCampaignDocument));

    // Act
    final result = await usecase.call(tParams);

    // Assert
    expect(result.isSuccess, true);
    expect(result.resultValue, tCampaignDocument);
  });
}
```

## 🤝 Contributing

### Code Style Guidelines
- Follow the existing code style and conventions
- Use meaningful variable and function names
- Add comments for complex business logic
- Ensure all code is null-safe
- Follow the established architectural patterns

### Pull Request Process
1. Create a feature branch from `main`
2. Make your changes following the architecture
3. Write or update tests for your changes
4. Ensure all tests pass and coverage is maintained
5. Update documentation if needed
6. Create a pull request with a clear description

### Commit Message Convention
```
feat: add new campaign creation feature
fix: resolve payment gateway timeout issue
docs: update API documentation
style: format code according to style guide
refactor: restructure campaign repository
test: add unit tests for user authentication
```

## 🔧 Troubleshooting

### Common Issues

**1. Flutter Version Issues**
```bash
# Ensure correct Flutter version
flutter --version

# If using mise
mise use flutter@3.32.8

# If using fvm
fvm use 3.32.8
```

**2. Code Generation Issues**
```bash
# Clean and rebuild generated code
dart run build_runner clean
dart run build_runner build

# Check for build errors
flutter analyze
```

**3. Environment Configuration**
```bash
# Verify environment files exist
ls -la assets/*/ | grep .env

# Check environment variable format
cat assets/development/.env
```

**4. Dependency Issues**
```bash
# Clean dependencies
flutter clean
flutter pub get

# Update dependencies
flutter pub upgrade
```

**5. Android Build Issues**
```bash
# Clean Android build
cd android
./gradlew clean
cd ..

# Accept Android licenses
flutter doctor --android-licenses
```

**6. VSCode Issues**
```bash
# Reload VSCode window
Ctrl+Shift+P → "Developer: Reload Window"

# Check Flutter SDK path in VSCode settings
# File → Preferences → Settings → Search "flutter"

# Verify VSCode extensions are installed
# View → Extensions → Search for "flutter" and "dart"

# Reset VSCode workspace settings
# Remove .vscode/settings.json and restart VSCode
```

### Getting Help
- Check the [Issues](../../issues) page for known problems
- Review the [AGENTS.md](./AGENTS.md) for development guidelines
- Check the [TEST_REPORT.md](./TEST_REPORT.md) for testing information
- See [.vscode/README.md](./.vscode/README.md) for detailed VSCode troubleshooting

## 📚 API Documentation

### Appwrite Collections
- **Users**: User profiles and authentication data
- **Campaigns**: Campaign information and metadata
- **Transactions**: Payment and donation records
- **Categories**: Campaign categorization
- **Bank Accounts**: User bank account information

### Payment Integration
- **Midtrans**: Payment gateway for donations
- **Supported Methods**: Credit Card, Bank Transfer, E-Wallet

### Firebase Services
- **Analytics**: User behavior tracking
- **Crashlytics**: Error reporting and crash analysis
- **Cloud Messaging**: Push notifications

## 📊 Project Status

- ✅ **Code Quality**: Comprehensive linting and analysis
- ✅ **Testing**: Full unit test coverage with 86% overall coverage
- ✅ **Bug Fixes**: All identified bugs have been resolved
- ✅ **Documentation**: Complete setup and development guides
- ✅ **Architecture**: Clean Architecture with proper separation of concerns
- ✅ **VSCode Integration**: Pre-configured launch configurations and tasks
- ✅ **CI/CD Ready**: Configured for automated testing and deployment

---

## 💻 VSCode Development

This project is fully configured for VSCode development with:

- 🚀 **Launch Configurations**: Ready-to-use debug configurations for all environments
- 🔧 **Build Tasks**: Automated tasks for common Flutter operations
- 📝 **Code Formatting**: Auto-format on save with proper Dart/Flutter formatting
- 🔍 **IntelliSense**: Full Dart and Flutter language support
- 🐛 **Debugging**: Integrated debugging with hot reload/hot restart
- 📊 **Testing**: Built-in test runner with coverage reporting
- 🎨 **Extensions**: Recommended extensions for optimal development experience

**Quick Start with VSCode:**
1. Open project in VSCode
2. Install recommended extensions (auto-prompted)
3. Select "IKA Smansara - Development" from Run panel
4. Press F5 to start debugging

> 📖 **For detailed VSCode setup, see [Running with VSCode](#running-with-vscode)**

---

**Built with ❤️ for IKA Smansara Community**
