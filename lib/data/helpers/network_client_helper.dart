import 'package:appwrite/appwrite.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class NetworkClientHelper {
  // DIO CLIENT HELPER FOR SNAP
  static final Dio _midtransSNAPClient = Dio(
    BaseOptions(
      baseUrl: dotenv.env['PAYMENT_GATEWAY_URL'].toString(),
      contentType: Headers.jsonContentType,
      headers: {
        'Accept': 'application/json',
        'Authorization':
            'Basic ${dotenv.env['API_KEY_PAYMENT_GATEWAY'].toString()}',
      },
    ),
  );

  // APPWRITE CLIENT HELPER
  static final Client _appwriteClient = Client()
      .setEndpoint(dotenv.env['BASE_URL'].toString())
      .setProject(dotenv.env['PROJECT_ID'].toString());

  NetworkClientHelper._();

  static final instance = NetworkClientHelper._();

  Dio get midtransSNAPClient => _midtransSNAPClient;
  Client get appwriteClient => _appwriteClient;
}
