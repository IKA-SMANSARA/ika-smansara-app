// ignore: lines_longer_than_80_chars

import 'package:logger/logger.dart';

class Constants {
  static final logger = Logger();
  static const baseURLNamed = 'BASE URL';
  static const paymentGatewayBaseURLNamed = 'BASE URL PAYMENT GATEWAY';
  static const paymentGatewayNetworkModuleNamed =
      'PAYMENT GATEWAY NETWORK MODULE';
  static const baseURL = 'https://cloud.appwrite.io/v1';

  // Dummy Counter APP Source Data
  static const projectId = '64aa86334bd6c9d9678f';
  static const apiKey =
      '7cd6d6df8450843baab9c47046573c63fd753e70d89c8223e420cb1ccf7854ee73a93170bef6af6a31db8a0bad67d903de0bd2bf7ffb059123f4edf8b0dec18bfc6bb8e2ecd42be0d04793cc792a276274fff9000997331a1a755c4934e4e0994da5a58b3bec0d1cdb5c3c2f9c70030fcddbc15fd659b74d2afe044472611ee3';
  static const databaseId = '64aa86f05fa0d48d76ff';
  static const collectionId = '64aa87186f6e663fc87a';
  static const documentId = '64aa8891b1513662c4bd';

  // Source Data REAL
  static const ikaSmansaraProjectId = '6526850f77b1a0e42833';
  static const ikaSmansaraApiKey =
      '02bc64055f82bc9b5f3a98dd5403be59234729bdf9efe3d9bb8210b2c0d133c76347938a33ae6e19c79025b8fb6de7fa843fc2037f5675f8ac7abc2322daec06d069f0b7cd8a18cb6bf04e1c47bfc219fc5cd8b841d88f314bc982f5ad0544c29887e74b1fb7031e332acb3d88f4ae2351eeae3682629bfc468cff41e6290610';
  static const ikaSmansaraDatabaseId = '652bc7f26602bddc2f4a';
  static const ikaSmansaraUserProfileCollectionId = '652bc80fe2fdeb1e3893';

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
  static const apiKeyPaymentGateway = 'SB-Mid-server-ywOX8MSEs8NRE8ISA_tn-M0A';
  static const blankString = '';
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
