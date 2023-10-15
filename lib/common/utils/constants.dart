// ignore: lines_longer_than_80_chars

import 'package:logger/logger.dart';

class Constants {
  static final logger = Logger();
  static const baseURLNamed = 'BASE URL';
  static const paymentGatewayBaseURLNamed = 'BASE URL PAYMENT GATEWAY';
  static const paymentGatewayNetworkModuleNamed =
      'PAYMENT GATEWAY NETWORK MODULE';
  static const baseURL = 'https://baas.pasarjepara.com/v1/';

  // Dummy Counter APP Source Data
  static const projectId = '64aa86334bd6c9d9678f';
  static const apiKey =
      '7cd6d6df8450843baab9c47046573c63fd753e70d89c8223e420cb1ccf7854ee73a93170bef6af6a31db8a0bad67d903de0bd2bf7ffb059123f4edf8b0dec18bfc6bb8e2ecd42be0d04793cc792a276274fff9000997331a1a755c4934e4e0994da5a58b3bec0d1cdb5c3c2f9c70030fcddbc15fd659b74d2afe044472611ee3';
  static const databaseId = '64aa86f05fa0d48d76ff';
  static const collectionId = '64aa87186f6e663fc87a';
  static const documentId = '64aa8891b1513662c4bd';

  // Source Data REAL
  static const ikaSmansaraProjectId = '64b4bb7323bcd1713f24';
  static const ikaSmansaraApiKey =
      '2a832c8860c2f642be52d71f87470b05ca9ff9b53cac21be5b4ea46acfeb9dbc17b3a80987e045fb0efb13103735b6bc709dda70b145ff9384b429def5fd14301f07ef9e040329253ed5549bbbf27b2c8d7659fa8018ff6d4844d89872c632f93a33d045f2b137a071fc74d83c8a0fda84a1e726185467898c8c546e5387be35';
  static const ikaSmansaraDatabaseId = '64bbf6b93db88b5aa9f8';
  static const ikaSmansaraAdminBankAccountCollectionId = '64bc05eac895c2cfa229';
  static const ikaSmansaraUserDonationHistoryCollectionId =
      '64bbf979c2bca4af0cc8';
  static const ikaSmansaraTransactionsCollectionId = '64bbf84ce2396e2860e3';
  static const ikaSmansaraUsersDataCollectionId = '64bbf7d0b126323dfdbc';
  static const ikaSmansaraCampaignDonationsCollectionId =
      '64bbf6f650ef22d15fb6';

  // Attributes
  static const accept = 'Accept';
  static const applicationJson = 'application/json';
  static const uniqueId = 'unique()';
  static const xAppwriteProject = 'X-Appwrite-Project';
  static const xAppwriteKey = 'X-Appwrite-Key';
  static const contentType = 'Content-Type';

  // Others
  static const fcmTokenBoxName = 'fcmTokenBox';
  static const vapidKeyFcm =
      'BH7TgdBEdeyIbhc15HLEZhvQ28R67tn5N9lfoyiyF6gSwzy8zX1AkVmTaOZs16pnAwyXVNz6O3bvWfDco2O0Rw8';
  static const paymentGateWayURL =
      'https://app.sandbox.midtrans.com/snap/v1/transactions';
  static const merchantCode = 'G472325854';
  static const apiKeyPaymentGateway = 'SB-Mid-server-ywOX8MSEs8NRE8ISA_tn-M0A';
  static const merchantCodeKey = 'merchantCode';
  static const merchantOrderIdDummy = 'ikasmansara002';
  static const merchantOrderIdKey = 'merchantOrderId';
  static const signatureKey = 'signature';
  static const mockUrlReturn = 'https://ikasmansara.page.link/return';
  static const mockUrlCallback = 'https://ikasmansara.page.link/callback';
  static const blankString = '';
  static const idCountryCode = 'ID';
  static const defaultExpiryPeriod = 20;
  static const amountValueKey = 'amount value';
  static const sessionUserIdBoxName = 'session-user-id';
  static const sessionUserIdKeyName = 'sessionUserId';
  static const loginFormBox = 'login-form';
  static const emailKey = 'email';
  static const passwordKey = 'password';
  static const idCampaignKey = 'id campaign';
  static const categoryNameKey = 'category name key';
  static const myDonationIdKey = 'my donation id key';
}
