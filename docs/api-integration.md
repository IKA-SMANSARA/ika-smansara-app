---
layout: default
title: API Integration Guide
permalink: /docs/api-integration/
---

# API Integration Guide

IKA Smansara integrates with multiple external services to provide comprehensive crowdfunding functionality. This guide covers the integration with Appwrite, Midtrans payment gateway, and Firebase services.

## 🗄️ Appwrite Integration

Appwrite serves as the primary backend-as-a-service for data storage, authentication, and file management.

### Configuration

Environment variables required for Appwrite:
```env
BASE_URL=https://cloud.appwrite.io/v1
PROJECT_ID=your_project_id
DATABASE_ID=main_database
CAMPAIGN_COLLECTION_ID=campaigns
USER_COLLECTION_ID=users
TRANSACTION_COLLECTION_ID=transactions
STORAGE_BUCKET_ID=campaign_images
```

### Authentication

Appwrite handles user authentication with multiple providers:

```dart
class AppwriteAuthenticationRepository implements AuthenticationRepository {
  final Account _account;

  @override
  Future<Result<UserDocument>> login({
    required String email,
    required String password,
  }) async {
    try {
      await _account.createEmailPasswordSession(
        email: email,
        password: password,
      );

      final user = await _account.get();
      return Result.success(UserDocument.fromJson(user.toMap()));
    } catch (e) {
      return Result.failed('Login failed: $e');
    }
  }

  @override
  Future<Result<UserDocument>> register({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      await _account.create(
        userId: ID.unique(),
        email: email,
        password: password,
        name: name,
      );

      return await login(email: email, password: password);
    } catch (e) {
      return Result.failed('Registration failed: $e');
    }
  }
}
```

### Database Operations

#### Collections Structure

**Campaigns Collection:**
```json
{
  "$id": "unique_id",
  "campaignName": "Education Fund",
  "description": "Help build a school",
  "goalAmount": 10000000,
  "currentAmount": 2500000,
  "imageUrl": "https://storage.appwrite.io/...",
  "categories": ["education", "children"],
  "creatorId": "user_id",
  "status": "active",
  "$createdAt": "2024-01-01T00:00:00.000Z",
  "$updatedAt": "2024-01-01T00:00:00.000Z"
}
```

**Transactions Collection:**
```json
{
  "$id": "unique_id",
  "campaignId": "campaign_id",
  "donorId": "user_id",
  "amount": 500000,
  "paymentMethod": "credit_card",
  "status": "completed",
  "midtransOrderId": "order_123",
  "midtransTransactionId": "transaction_456",
  "$createdAt": "2024-01-01T00:00:00.000Z"
}
```

#### Campaign Repository Implementation

```dart
class AppwriteCampaignRepository implements CampaignRepository {
  final Databases _databases;
  final Storage _storage;

  @override
  Future<Result<List<CampaignDocument>>> getCampaigns({
    int? limit = 20,
    int? offset = 0,
    String? category,
  }) async {
    try {
      final response = await _databases.listDocuments(
        databaseId: databaseId,
        collectionId: campaignCollectionId,
        queries: [
          if (category != null) Query.equal('categories', category),
          Query.orderDesc('\$createdAt'),
          Query.limit(limit!),
          Query.offset(offset!),
        ],
      );

      final campaigns = response.documents
          .map((doc) => CampaignDocument.fromJson(doc.data))
          .toList();

      return Result.success(campaigns);
    } catch (e) {
      return Result.failed('Failed to fetch campaigns: $e');
    }
  }

  @override
  Future<Result<CampaignDocument>> createCampaign({
    required String campaignName,
    required String description,
    required int goalAmount,
    File? imageFile,
    List<String>? categories,
  }) async {
    try {
      String? imageUrl;

      // Upload image if provided
      if (imageFile != null) {
        final file = await _storage.createFile(
          bucketId: storageBucketId,
          fileId: ID.unique(),
          file: InputFile.fromPath(path: imageFile.path),
        );
        imageUrl = 'https://storage.appwrite.io/v1/files/${file.$id}/view';
      }

      // Create campaign document
      final document = await _databases.createDocument(
        databaseId: databaseId,
        collectionId: campaignCollectionId,
        documentId: ID.unique(),
        data: {
          'campaignName': campaignName,
          'description': description,
          'goalAmount': goalAmount,
          'currentAmount': 0,
          'imageUrl': imageUrl,
          'categories': categories ?? [],
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

### File Storage

Appwrite Storage handles campaign images and user avatars:

```dart
class AppwriteStorageService {
  final Storage _storage;

  Future<String?> uploadCampaignImage(File imageFile) async {
    try {
      final file = await _storage.createFile(
        bucketId: campaignImagesBucketId,
        fileId: ID.unique(),
        file: InputFile.fromPath(path: imageFile.path),
      );

      return 'https://storage.appwrite.io/v1/files/${file.$id}/view';
    } catch (e) {
      return null;
    }
  }

  Future<bool> deleteCampaignImage(String fileId) async {
    try {
      await _storage.deleteFile(
        bucketId: campaignImagesBucketId,
        fileId: fileId,
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}
```

## 💳 Midtrans Payment Integration

Midtrans handles secure payment processing for donations.

### Configuration

Environment variables for Midtrans:
```env
MIDTRANS_CORE_API_URL=https://api.midtrans.com/v2
MIDTRANS_API_KEY=your_midtrans_api_key
MIDTRANS_MERCHANT_ID=your_merchant_id
PAYMENT_NOTIFICATION_URL=https://your-domain.com/payment/notification
```

### Payment Flow

1. **Create Payment** → Generate Midtrans transaction
2. **Redirect to Payment Page** → User completes payment
3. **Handle Notification** → Update transaction status
4. **Update Campaign** → Add donation amount

#### Payment Gateway Implementation

```dart
class MidtransPaymentGateway implements PaymentGatewayRepository {
  final Dio _dio;

  @override
  Future<Result<PaymentTransaction>> createPayment({
    required String orderId,
    required int amount,
    required String customerName,
    required String customerEmail,
    String? description,
  }) async {
    try {
      final response = await _dio.post(
        '/charge',
        data: {
          'payment_type': 'bank_transfer',
          'transaction_details': {
            'order_id': orderId,
            'gross_amount': amount,
          },
          'customer_details': {
            'first_name': customerName,
            'email': customerEmail,
          },
          'item_details': [
            {
              'id': 'donation',
              'price': amount,
              'quantity': 1,
              'name': description ?? 'Campaign Donation',
            }
          ],
        },
        options: Options(
          headers: {
            'Authorization': 'Basic ${base64Encode(utf8.encode(apiKey + ':'))}',
            'Content-Type': 'application/json',
          },
        ),
      );

      final transaction = PaymentTransaction.fromJson(response.data);
      return Result.success(transaction);
    } catch (e) {
      return Result.failed('Payment creation failed: $e');
    }
  }

  @override
  Future<Result<PaymentStatus>> checkPaymentStatus(String orderId) async {
    try {
      final response = await _dio.get(
        '/$orderId/status',
        options: Options(
          headers: {
            'Authorization': 'Basic ${base64Encode(utf8.encode(apiKey + ':'))}',
          },
        ),
      );

      final status = PaymentStatus.fromJson(response.data);
      return Result.success(status);
    } catch (e) {
      return Result.failed('Status check failed: $e');
    }
  }
}
```

### Payment Methods Supported

- **Bank Transfer**: BRI, BCA, Mandiri, BNI, Permata
- **Credit Card**: Visa, Mastercard, JCB, American Express
- **E-Wallet**: GoPay, OVO, DANA, LinkAja
- **Retail**: Alfamart, Indomaret

### Webhook Handling

Handle payment notifications from Midtrans:

```dart
class PaymentNotificationHandler {
  Future<void> handleNotification(Map<String, dynamic> notificationData) async {
    final orderId = notificationData['order_id'];
    final transactionStatus = notificationData['transaction_status'];

    // Update transaction status in database
    await _transactionRepository.updateTransactionStatus(
      orderId: orderId,
      status: _mapMidtransStatus(transactionStatus),
    );

    // Update campaign amount if payment successful
    if (transactionStatus == 'settlement') {
      final transaction = await _transactionRepository.getTransactionByOrderId(orderId);
      if (transaction != null) {
        await _campaignRepository.addDonation(
          campaignId: transaction.campaignId,
          amount: transaction.amount,
        );
      }
    }
  }

  TransactionStatus _mapMidtransStatus(String midtransStatus) {
    return switch (midtransStatus) {
      'settlement' => TransactionStatus.completed,
      'pending' => TransactionStatus.pending,
      'cancel' => TransactionStatus.cancelled,
      'expire' => TransactionStatus.expired,
      'failure' => TransactionStatus.failed,
      _ => TransactionStatus.unknown,
    };
  }
}
```

## 🔥 Firebase Integration

Firebase provides analytics, crash reporting, and push notifications.

### Configuration

**Firebase Options** (`lib/firebase_options.dart`):
```dart
const FirebaseOptions firebaseOptions = FirebaseOptions(
  apiKey: 'your_api_key',
  appId: 'your_app_id',
  messagingSenderId: 'your_sender_id',
  projectId: 'your_project_id',
  storageBucket: 'your_project.appspot.com',
);
```

### Analytics

Track user behavior and app usage:

```dart
class FirebaseAnalyticsService {
  final FirebaseAnalytics _analytics;

  Future<void> logCampaignView(String campaignId) async {
    await _analytics.logEvent(
      name: 'campaign_view',
      parameters: {
        'campaign_id': campaignId,
      },
    );
  }

  Future<void> logDonation(String campaignId, int amount) async {
    await _analytics.logEvent(
      name: 'donation_completed',
      parameters: {
        'campaign_id': campaignId,
        'amount': amount,
        'currency': 'IDR',
      },
    );
  }

  Future<void> setUserProperties(String userId, String userType) async {
    await _analytics.setUserId(id: userId);
    await _analytics.setUserProperty(
      name: 'user_type',
      value: userType,
    );
  }
}
```

### Crashlytics

Monitor app crashes and errors:

```dart
class CrashlyticsService {
  Future<void> recordError(dynamic exception, StackTrace? stackTrace) async {
    await FirebaseCrashlytics.instance.recordError(
      exception,
      stackTrace,
      reason: 'Application error',
    );
  }

  Future<void> log(String message) async {
    await FirebaseCrashlytics.instance.log(message);
  }

  Future<void> setUserIdentifier(String userId) async {
    await FirebaseCrashlytics.instance.setUserIdentifier(userId);
  }
}
```

### Cloud Messaging (FCM)

Handle push notifications:

```dart
class FirebaseMessagingService {
  final FirebaseMessaging _messaging;

  Future<void> initialize() async {
    // Request permission
    final settings = await _messaging.requestPermission();

    // Get FCM token
    final token = await _messaging.getToken();

    // Handle incoming messages
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleBackgroundMessage);
  }

  void _handleForegroundMessage(RemoteMessage message) {
    // Show local notification
    _showLocalNotification(
      title: message.notification?.title ?? '',
      body: message.notification?.body ?? '',
    );
  }

  void _handleBackgroundMessage(RemoteMessage message) {
    // Navigate to relevant screen
    _navigateToCampaign(message.data['campaign_id']);
  }

  Future<void> subscribeToTopic(String topic) async {
    await _messaging.subscribeToTopic(topic);
  }

  Future<void> unsubscribeFromTopic(String topic) async {
    await _messaging.unsubscribeFromTopic(topic);
  }
}
```

## 🔄 Network Client

Custom network client for consistent API communication:

```dart
class NetworkClientHelper {
  final Dio _dio;

  NetworkClientHelper({
    required String baseUrl,
    Map<String, dynamic>? headers,
  }) {
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      headers: headers,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ));

    _setupInterceptors();
  }

  void _setupInterceptors() {
    _dio.interceptors.addAll([
      // Logging interceptor
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (object) => Constants.logger.d(object),
      ),

      // Error handling interceptor
      InterceptorsWrapper(
        onError: (error, handler) async {
          if (error.response?.statusCode == 401) {
            // Handle unauthorized access
            await _handleUnauthorized();
          }
          handler.next(error);
        },
      ),
    ]);
  }

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.get<T>(
        path,
        queryParameters: queryParameters,
        options: options,
      );
      return response;
    } catch (e) {
      throw _handleNetworkError(e);
    }
  }

  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response;
    } catch (e) {
      throw _handleNetworkError(e);
    }
  }

  Exception _handleNetworkError(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return NetworkException('Connection timeout');
        case DioExceptionType.receiveTimeout:
          return NetworkException('Receive timeout');
        case DioExceptionType.sendTimeout:
          return NetworkException('Send timeout');
        case DioExceptionType.badResponse:
          return ServerException(
            error.response?.statusCode ?? 500,
            error.response?.data ?? 'Unknown error',
          );
        case DioExceptionType.cancel:
          return NetworkException('Request cancelled');
        default:
          return NetworkException('Network error: ${error.message}');
      }
    }
    return NetworkException('Unknown error: $error');
  }

  Future<void> _handleUnauthorized() async {
    // Clear user session and navigate to login
    await _authRepository.logout();
    _navigationService.navigateToLogin();
  }
}
```

## 🔐 Security Considerations

### API Key Management
- Never commit API keys to version control
- Use environment-specific configuration files
- Rotate keys regularly
- Use restricted API keys when possible

### Data Validation
- Validate all input data on both client and server
- Sanitize user inputs to prevent injection attacks
- Use HTTPS for all API communications
- Implement rate limiting for sensitive operations

### Error Handling
- Don't expose sensitive information in error messages
- Log errors securely without exposing user data
- Implement proper fallback mechanisms
- Monitor and alert on unusual error patterns

## 📊 Monitoring & Logging

### Request/Response Logging
```dart
class ApiLogger {
  static void logRequest(RequestOptions options) {
    Constants.logger.d('''
🌐 API Request:
  Method: ${options.method}
  URL: ${options.baseUrl}${options.path}
  Headers: ${options.headers}
  Data: ${options.data}
''');
  }

  static void logResponse(Response response) {
    Constants.logger.d('''
✅ API Response:
  Status: ${response.statusCode}
  URL: ${response.requestOptions.baseUrl}${response.requestOptions.path}
  Data: ${response.data}
''');
  }

  static void logError(DioException error) {
    Constants.logger.e('''
❌ API Error:
  Type: ${error.type}
  Status: ${error.response?.statusCode}
  URL: ${error.requestOptions.baseUrl}${error.requestOptions.path}
  Message: ${error.message}
  Data: ${error.response?.data}
''');
  }
}
```

This comprehensive integration ensures secure, reliable, and scalable communication with all external services while maintaining clean architecture principles.