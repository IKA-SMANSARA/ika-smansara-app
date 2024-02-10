import 'package:appwrite/appwrite.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NetworkClientHelper {
  // DIO CLIENT HELPER FOR SNAP
  static final Dio _midtransSNAPClient = Dio(
    BaseOptions(
      baseUrl: dotenv.env['PAYMENT_GATEWAY_URL'].toString(),
      contentType: Headers.jsonContentType,
      headers: {
        'Authorization':
            'Basic ${dotenv.env['API_KEY_PAYMENT_GATEWAY'].toString()}',
        'Accept': 'application/json',
      },
    ),
  )..interceptors.add(
      PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 80),
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
