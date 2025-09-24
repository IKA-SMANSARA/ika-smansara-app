---
layout: default
title: Deployment Guide
permalink: /docs/deployment-guide/
---

# Deployment Guide

This guide covers the deployment process for IKA Smansara across different environments and platforms. The project supports multiple deployment strategies for development, staging, and production environments.

## 🏗️ Build Configuration

### Environment Flavors

The app supports three distinct environments:

#### Development Environment
- **Flavor**: `development`
- **Target**: `lib/main_development.dart`
- **Purpose**: Local development and testing
- **Configuration**: Local Appwrite instance or development server

#### Staging Environment
- **Flavor**: `staging`
- **Target**: `lib/main_staging.dart`
- **Purpose**: Pre-production testing
- **Configuration**: Staging Appwrite project and services

#### Production Environment
- **Flavor**: `production`
- **Target**: `lib/main_production.dart`
- **Purpose**: Live production application
- **Configuration**: Production Appwrite project and services

### Environment Variables

Each environment requires specific configuration files:

```
assets/
├── development/
│   └── .env
├── staging/
│   └── .env
└── production/
    └── .env
```

#### Required Environment Variables

```env
# Appwrite Configuration
BASE_URL=https://cloud.appwrite.io/v1
PROJECT_ID=your_project_id
DATABASE_ID=main_database
STORAGE_BUCKET_ID=campaign_images

# Authentication Collections
USER_COLLECTION_ID=users
CAMPAIGN_COLLECTION_ID=campaigns
TRANSACTION_COLLECTION_ID=transactions
CATEGORY_COLLECTION_ID=categories
BANK_ACCOUNT_COLLECTION_ID=bank_accounts

# Payment Gateway (Midtrans)
MIDTRANS_CORE_API_URL=https://api.midtrans.com/v2
MIDTRANS_API_KEY=your_midtrans_api_key
MIDTRANS_MERCHANT_ID=your_merchant_id
PAYMENT_NOTIFICATION_URL=https://your-domain.com/api/payment/notification

# Firebase Configuration
FIREBASE_API_KEY=your_firebase_api_key
FIREBASE_APP_ID=your_firebase_app_id
FIREBASE_MESSAGING_SENDER_ID=your_sender_id
FIREBASE_PROJECT_ID=your_project_id

# App Configuration
APP_NAME=IKA Smansara
APP_VERSION=1.0.0
SUPPORT_EMAIL=support@ikasmansara.com
```

## 📱 Android Deployment

### APK Build Process

#### Development APK
```bash
# Build development APK
flutter build apk --flavor development --target lib/main_development.dart

# Output location
build/app/outputs/flutter-apk/app-development-release.apk
```

#### Staging APK
```bash
# Build staging APK
flutter build apk --flavor staging --target lib/main_staging.dart

# Output location
build/app/outputs/flutter-apk/app-staging-release.apk
```

#### Production APK
```bash
# Build production APK
flutter build apk --flavor production --target lib/main_production.dart

# Output location
build/app/outputs/flutter-apk/app-production-release.apk
```

### Android App Bundle (AAB) for Play Store

```bash
# Build production AAB
flutter build appbundle --flavor production --target lib/main_production.dart

# Output location
build/app/outputs/bundle/productionRelease/app-production-release.aab
```

### Signing Configuration

#### Debug Signing (Development)
Automatically handled by Flutter - no additional configuration needed.

#### Release Signing (Production)
Create `android/key.properties` file:

```properties
storePassword=your_store_password
keyPassword=your_key_password
keyAlias=your_key_alias
storeFile=../app/upload-keystore.jks
```

Generate keystore:
```bash
# Generate keystore
keytool -genkey -v -keystore upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload

# Move keystore to android/app/
mv upload-keystore.jks android/app/
```

### Play Store Deployment

1. **Prepare Release**:
   ```bash
   # Build AAB
   flutter build appbundle --flavor production --target lib/main_production.dart
   ```

2. **Upload to Play Console**:
   - Go to Google Play Console
   - Select your app
   - Navigate to "Release" → "Production"
   - Upload the AAB file
   - Fill release notes and submit

3. **Internal Testing Track** (Recommended for staging):
   - Use internal testing for QA validation
   - Distribute to internal testers
   - Promote to production after validation

## 🌐 Web Deployment

### Firebase Hosting

#### Setup Firebase Hosting
```bash
# Install Firebase CLI
npm install -g firebase-tools

# Login to Firebase
firebase login

# Initialize Firebase in project
firebase init hosting

# Select Firebase project
# Choose 'build/web' as public directory
# Configure as single-page app: Yes
```

#### Build and Deploy Web App
```bash
# Build web app
flutter build web --release --target lib/main_production.dart --base-href "/"

# Deploy to Firebase Hosting
firebase deploy --only hosting
```

#### Firebase Configuration
`firebase.json`:
```json
{
  "hosting": {
    "public": "build/web",
    "ignore": [
      "firebase.json",
      "**/.*",
      "**/node_modules/**"
    ],
    "rewrites": [
      {
        "source": "**",
        "destination": "/index.html"
      }
    ],
    "headers": [
      {
        "source": "**/*.js",
        "headers": [
          {
            "key": "Cache-Control",
            "value": "max-age=31536000"
          }
        ]
      },
      {
        "source": "**/*.css",
        "headers": [
          {
            "key": "Cache-Control",
            "value": "max-age=31536000"
          }
        ]
      }
    ]
  }
}
```

### GitHub Pages

#### Automated Deployment
The project includes GitHub Actions for automatic web deployment:

```yaml
# .github/workflows/deploy.yml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]

jobs:
  build-and-deploy:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout
      uses: actions/checkout@v4

    - name: Setup Flutter
      uses: subosito/flutter-action@v2
      with:
        flutter-version: '3.32.8'

    - name: Build web
      run: |
        flutter build web --release \
          --target lib/main_production.dart \
          --base-href "/ika-smansara-app/"

    - name: Deploy to GitHub Pages
      uses: peaceiris/actions-gh-pages@v3
      with:
        github_token: ${{ secrets.GITHUB_TOKEN }}
        publish_dir: build/web
        cname: ika-smansara-app.github.io
```

#### Manual Deployment
```bash
# Build with correct base href
flutter build web --release \
  --target lib/main_production.dart \
  --base-href "/ika-smansara-app/"

# Deploy using GitHub CLI
gh pages deploy build/web --repo yourusername/ika-smansara-app
```

## 🚀 CI/CD Pipeline

### GitHub Actions Workflows

#### Test Workflow
```yaml
# .github/workflows/test.yml
name: Test

on:
  push:
    branches: [ main, develop ]
  pull_request:
    branches: [ main ]

jobs:
  test:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v4

    - name: Setup Flutter
      uses: subosito/flutter-action@v2
      with:
        flutter-version: '3.32.8'

    - name: Install dependencies
      run: flutter pub get

    - name: Generate code
      run: dart run build_runner build

    - name: Run tests
      run: flutter test --coverage

    - name: Upload coverage
      uses: codecov/codecov-action@v3
      with:
        file: coverage/lcov.info
```

#### Build and Release Workflow
```yaml
# .github/workflows/release.yml
name: Release

on:
  push:
    tags:
      - 'v*'

jobs:
  release:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v4

    - name: Setup Flutter
      uses: subosito/flutter-action@v2
      with:
        flutter-version: '3.32.8'

    - name: Build Android APK
      run: flutter build apk --flavor production --target lib/main_production.dart

    - name: Build Android AAB
      run: flutter build appbundle --flavor production --target lib/main_production.dart

    - name: Build Web
      run: flutter build web --release --target lib/main_production.dart

    - name: Create Release
      uses: softprops/action-gh-release@v1
      with:
        files: |
          build/app/outputs/flutter-apk/app-production-release.apk
          build/app/outputs/bundle/productionRelease/app-production-release.aab
          build/web/**
        generate_release_notes: true
```

### Release Process

#### Version Management
1. **Update version** in `pubspec.yaml`
2. **Update changelog** in `CHANGELOG.md`
3. **Create git tag**:
   ```bash
   git tag -a v1.2.0 -m "Release version 1.2.0"
   git push origin v1.2.0
   ```

#### Automated Release
- Tagging triggers automated build and release
- Artifacts are uploaded to GitHub Releases
- Release notes are generated automatically

## 🔧 Environment Management

### Appwrite Setup

#### Development Environment
```bash
# Create development project
appwrite projects create --name "IKA Smansara Dev" --id "ika-smansara-dev"

# Setup collections and databases
# Use Appwrite Console or CLI to configure
```

#### Production Environment
```bash
# Create production project
appwrite projects create --name "IKA Smansara" --id "ika-smansara-prod"

# Configure production databases and storage
# Setup proper permissions and security rules
```

### Database Migration

#### Schema Changes
1. **Update entity definitions** in domain layer
2. **Regenerate Freezed code**:
   ```bash
   dart run build_runner build
   ```
3. **Update Appwrite collections** to match new schema
4. **Create migration scripts** for data transformation if needed

#### Data Seeding
```dart
// lib/utils/database_seeder.dart
class DatabaseSeeder {
  final Databases _databases;

  Future<void> seedInitialData() async {
    // Seed categories
    await _seedCategories();

    // Seed sample campaigns (for development only)
    if (kDebugMode) {
      await _seedSampleCampaigns();
    }
  }

  Future<void> _seedCategories() async {
    final categories = [
      {'name': 'Education', 'icon': 'school'},
      {'name': 'Health', 'icon': 'medical'},
      {'name': 'Environment', 'icon': 'tree'},
      // ... more categories
    ];

    for (final category in categories) {
      await _databases.createDocument(
        databaseId: databaseId,
        collectionId: categoryCollectionId,
        documentId: ID.unique(),
        data: category,
      );
    }
  }
}
```

## 📊 Monitoring & Analytics

### Firebase Integration

#### Crashlytics Setup
```dart
// lib/utils/crashlytics_helper.dart
class CrashlyticsHelper {
  static Future<void> initialize() async {
    await Firebase.initializeApp();

    // Configure Crashlytics
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }

  static Future<void> setUserContext(String userId, String userType) async {
    await FirebaseCrashlytics.instance.setUserIdentifier(userId);
    await FirebaseCrashlytics.instance.setCustomKey('user_type', userType);
  }
}
```

#### Analytics Tracking
```dart
// lib/utils/analytics_helper.dart
class AnalyticsHelper {
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  static Future<void> logCampaignView(String campaignId, String category) async {
    await analytics.logEvent(
      name: 'campaign_view',
      parameters: {
        'campaign_id': campaignId,
        'category': category,
      },
    );
  }

  static Future<void> logDonation(String campaignId, double amount) async {
    await analytics.logEvent(
      name: 'donation_completed',
      parameters: {
        'campaign_id': campaignId,
        'amount': amount,
        'currency': 'IDR',
      },
    );
  }
}
```

### Performance Monitoring

#### App Performance
- **Monitor app startup time**
- **Track memory usage**
- **Monitor network requests**
- **Track user engagement metrics**

#### Error Tracking
- **Automatic crash reporting**
- **Error boundary handling**
- **User feedback collection**
- **Performance issue alerts**

## 🔒 Security Considerations

### Build Security
- **Obfuscate release builds**:
  ```yaml
  # android/app/build.gradle
  buildTypes {
    release {
      minifyEnabled true
      proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro'
    }
  }
  ```

- **Enable R8 optimization** for Android
- **Use code signing** for all builds
- **Store secrets securely** (GitHub Secrets, environment variables)

### Runtime Security
- **Certificate pinning** for API calls
- **Input validation** on all user inputs
- **Secure storage** for sensitive data
- **Regular security audits**

## 🚨 Rollback Strategy

### Emergency Rollback
1. **Identify the issue** and notify stakeholders
2. **Revert to previous version**:
   ```bash
   git revert <problematic-commit>
   git push origin main
   ```
3. **Deploy previous build** from GitHub Releases
4. **Monitor system recovery**

### Gradual Rollback
1. **Deploy previous version** to staging
2. **Test thoroughly** in staging environment
3. **Gradually roll out** to production users
4. **Monitor metrics** and user feedback

## 📈 Scaling Considerations

### Database Scaling
- **Implement pagination** for large datasets
- **Use database indexes** for frequently queried fields
- **Consider database sharding** for high traffic
- **Implement caching** strategies

### App Performance
- **Optimize bundle size** with tree shaking
- **Implement lazy loading** for features
- **Use CDN** for static assets
- **Monitor and optimize** API response times

### Infrastructure Scaling
- **Use load balancers** for high traffic
- **Implement auto-scaling** for server resources
- **Use CDN** for global content delivery
- **Monitor resource usage** and plan capacity

This comprehensive deployment guide ensures reliable, secure, and scalable delivery of the IKA Smansara application across all platforms and environments.