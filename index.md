---
layout: default
title: Home
---

# IKA Smansara App

A comprehensive Flutter application for IKA Smansara, a crowdfunding platform that connects donors with various charitable campaigns and social initiatives.

## 📖 Documentation

- **[Setup Guide](docs/setup.md)** - Complete setup and installation instructions
- **[Architecture Overview](docs/architecture.md)** - Clean Architecture implementation details
- **[API Integration Guide](docs/api-integration.md)** - Appwrite, Midtrans, and Firebase integration
- **[State Management Guide](docs/state-management.md)** - Riverpod implementation and patterns
- **[Testing Strategy](docs/testing-strategy.md)** - Comprehensive testing approach and coverage
- **[Development Guidelines](docs/development-guidelines.md)** - Coding standards and best practices
- **[Deployment Guide](docs/deployment-guide.md)** - Build, deploy, and release processes

## ✨ Key Features

### 🏦 Campaign Management
- Browse and search charitable campaigns
- Create and manage fundraising campaigns
- Real-time progress tracking
- Campaign categorization and filtering

### 💳 Secure Payments
- Midtrans payment gateway integration
- Multiple payment methods (credit card, bank transfer, e-wallet)
- Secure transaction processing
- Donation receipts and history

### 👥 User Management
- Appwrite-powered authentication
- User profiles with avatar uploads
- Bank account integration for payouts
- Role-based access control

### 📊 Analytics & Monitoring
- Firebase Analytics for user behavior tracking
- Crashlytics for error monitoring
- Real-time campaign metrics
- Performance monitoring

### 🎨 Modern UI/UX
- Responsive design for mobile devices
- Dark/light theme support
- Intuitive navigation with Riverpod state management
- Offline capability for core features

## 🛠️ Tech Stack

- **Flutter 3.32.8** - Cross-platform mobile framework
- **Clean Architecture** - Domain → Data → Presentation layers
- **Riverpod** - Reactive state management
- **Freezed** - Immutable data models with JSON serialization
- **Appwrite** - Backend-as-a-Service (Auth, Database, Storage)
- **Midtrans** - Payment gateway integration
- **Firebase** - Analytics, Crashlytics, Cloud Messaging

## 🚀 Quick Start

### Prerequisites
- Flutter 3.32.8
- Dart SDK
- Android Studio or VS Code
- Git

### Installation
```bash
# Clone repository
git clone <repository-url>
cd ika-smansara-app

# Setup Flutter version
mise install
fvm use

# Install dependencies
flutter pub get

# Generate code
dart run build_runner build
fluttergen
flutter pub run flutter_launcher_icons:main
```

### Environment Setup
```bash
# Copy environment files
cp .env_example assets/development/.env
cp .env_example assets/staging/.env
cp .env_example assets/production/.env

# Configure your API keys and endpoints in each .env file
```

### Running the App
```bash
# Development
flutter run --flavor development --target lib/main_development.dart

# Staging
flutter run --flavor staging --target lib/main_staging.dart

# Production
flutter run --flavor production --target lib/main_production.dart
```

## 📁 Project Structure

```
lib/
├── domain/               # Business Logic Layer
│   ├── entities/         # Data Models (Freezed)
│   └── usecases/         # Business Use Cases
├── data/                 # Data Access Layer
│   ├── repositories/     # Repository Interfaces & Implementations
│   ├── appwrite/         # Appwrite Service Integrations
│   ├── payment_gateway/  # Payment Processing
│   └── helpers/          # Network & Utility Classes
└── presentation/         # Presentation Layer
    ├── pages/           # Screen Widgets
    ├── providers/       # Riverpod State Management
    ├── widgets/         # Reusable UI Components
    └── extensions/      # UI Extensions & Utilities
```

## 🧪 Testing

```bash
# Run all tests
flutter test

# Run with coverage
flutter test --coverage

# Run specific test
flutter test test/domain/usecases/create_campaign_test.dart
```

**Current Coverage**: 86% (Domain: 95%, Data: 80%, Presentation: 80%)

## 🤝 Contributing

We welcome contributions! Please see our [Development Guidelines](docs/development-guidelines.md) for detailed information.

### Development Workflow
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Follow the [development guidelines](docs/development-guidelines.md)
4. Write tests for your changes
5. Ensure all tests pass and maintain coverage
6. Submit a pull request

### Code Style
- Follow the established [coding standards](docs/development-guidelines.md)
- Use Clean Architecture principles
- Write comprehensive tests
- Document complex business logic

## 📦 Deployment

The app supports multiple deployment targets:

### Mobile
```bash
# Build APK
flutter build apk --flavor production --target lib/main_production.dart

# Build AAB for Play Store
flutter build appbundle --flavor production --target lib/main_production.dart
```

### Web
```bash
# Build web app
flutter build web --release --target lib/main_production.dart --base-href "/"

# Deploy to Firebase Hosting
firebase deploy --only hosting
```

See the [Deployment Guide](docs/deployment-guide.md) for complete instructions.

## 📊 Project Status

- ✅ **Architecture**: Clean Architecture fully implemented
- ✅ **Testing**: Comprehensive test suite with 86% coverage
- ✅ **Documentation**: Complete setup and development guides
- ✅ **CI/CD**: Automated testing and deployment pipelines
- ✅ **Code Quality**: Linting and analysis configured
- ✅ **Security**: Secure API key management and input validation

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**Built with ❤️ for IKA Smansara Community**