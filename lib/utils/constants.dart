// ignore_for_file: lines_longer_than_80_chars

import 'package:logger/logger.dart';

class Constants {
  static final logger = Logger();
  static const baseURL = 'https://cloud.ezhardigital.com/v1';

  // Source Data REAL
  static const ikaSmansaraProjectId = '6593da3fed3a601345e6';
  static const ikaSmansaraApiKey =
      'b7bb1d90016162a14dfcd83ab02e4b9cf6f20f515c1680806f4191170a9cb5b601d9d0d3062ad5621a522ba7cb670e83344bdf989deda266a525267a5c3e60a32d8ff6a5694633a27646bd4be14c431e4bba9cc049a0dc5fde0edee8854694081afcc9bde5833ee78dc334204b6edf53ea864a2fcc35a2e5921039e02cd83420';
  static const ikaSmansaraDatabaseId = '652bc7f26602bddc2f4a';
  static const ikaSmansaraUserProfileCollectionId = '652bc80fe2fdeb1e3893';
  static const ikaSmansaraCategoriesCollectionId = '6533be7558e38f4d949d';
  static const ikaSmansaraCarouselCollectionId = '653a5e0cd286c5903643';
  static const ikaSmansaraCampaignsCollectionId = '6533c53f27828417727d';
  static const ikaSmansaraTransactionsCollectionId = '655a30ce2d322d7aa3d8';

  // Others
  static const fcmTokenBoxName = 'fcmTokenBox';
  static const vapidKeyFcm =
      'BH7TgdBEdeyIbhc15HLEZhvQ28R67tn5N9lfoyiyF6gSwzy8zX1AkVmTaOZs16pnAwyXVNz6O3bvWfDco2O0Rw8';
  static const paymentGateWayURL =
      'https://app.sandbox.midtrans.com/snap/v1/transactions'; // sandbox
  // static const paymentGateWayURL =
  // 'https://app.midtrans.com/snap/v1/transactions'; // prod
  static const apiKeyPaymentGateway =
      'SB-Mid-server-JhkHk51SeijTaaoPLtkG3MaM'; // dev
  // static const apiKeyPaymentGateway = 'Mid-server-Qu-d3DU5dzjnLAkxEI5dx-P_'; // prod
  static const blankString = '';
}
