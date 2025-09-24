---
layout: default
title: Setup Guide
permalink: /docs/setup/
---

# Setup Guide

This guide will help you get the IKA Smansara Flutter app up and running on your local development environment.

## Prerequisites

Before you begin, ensure you have the following installed:

- **Flutter SDK**: Version 3.32.8
- **Dart SDK**: Included with Flutter
- **Android Studio** or **Visual Studio Code** with Flutter extensions
- **Git**: For version control

### Installing Flutter

1. Download Flutter from the [official website](https://flutter.dev/docs/get-started/install)
2. Extract the Flutter SDK to your desired location
3. Add Flutter to your PATH
4. Run `flutter doctor` to verify your installation

### Using Mise (Recommended)

This project uses [Mise](https://mise.jdx.dev/) for environment management:

```bash
# Install Mise
curl https://mise.jdx.dev/install.sh | sh

# Install Flutter version specified in .fvmrc
mise install
fvm use
```

## Project Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/ika-smansara-app.git
   cd ika-smansara-app
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Generate code**:
   ```bash
   # Generate Riverpod providers
   dart run build_runner build

   # Generate Flutter assets
   fluttergen

   # Generate launcher icons
   flutter pub run flutter_launcher_icons:main
   ```

## Environment Configuration

1. Copy the environment file:
   ```bash
   cp .env_example assets/development/.env
   cp .env_example assets/staging/.env
   cp .env_example assets/production/.env
   ```

2. Configure your environment variables in each `.env` file:
   - Appwrite endpoint and project ID
   - Payment gateway credentials
   - Other API keys

## Running the App

### Development
```bash
flutter run --flavor development --target lib/main_development.dart
```

### Staging
```bash
flutter run --flavor staging --target lib/main_staging.dart
```

### Production
```bash
flutter run --flavor production --target lib/main_production.dart
```

### Web
```bash
flutter run --flavor development --target lib/main_development.dart -d web
```

## Building for Release

### Android APK
```bash
flutter build apk --flavor production --target lib/main_production.dart
```

### Android App Bundle
```bash
flutter build appbundle --flavor production --target lib/main_production.dart
```

### Web
```bash
flutter build web --release --target lib/main_production.dart --base-href "/ika-smansara-app/"
```

## Testing

Run the test suite:
```bash
flutter test --coverage
```

Run a specific test:
```bash
flutter test test/domain/usecases/get_campaign_detail_test.dart
```

## Troubleshooting

### Common Issues

1. **Flutter version mismatch**: Ensure you're using Flutter 3.32.8
2. **Code generation fails**: Run `flutter pub get` and then `dart run build_runner build --delete-conflicting-outputs`
3. **Android build fails**: Check your Android SDK installation and ensure all licenses are accepted

### Getting Help

- Check the [Flutter documentation](https://flutter.dev/docs)
- Review the project's [AGENTS.md](AGENTS.md) file
- Open an issue on GitHub for project-specific problems