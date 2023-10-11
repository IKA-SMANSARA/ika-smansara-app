// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_services_payment_gateway.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$ApiServicesPaymentGateway extends ApiServicesPaymentGateway {
  _$ApiServicesPaymentGateway([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiServicesPaymentGateway;

  @override
  Future<Response<dynamic>> acquiringTransactionToken(
      MidtransTransactionRequestDTO midtransTransactionRequestDTO) {
    final Uri $url = Uri.parse('');
    final Map<String, String> $headers = {
      'Accept': 'application/json',
      'Authorization':
          'Basic U0ItTWlkLXNlcnZlci15d09YOE1TRXM4TlJFOElTQV90bi1NMEE6',
      'Content-Type': 'application/json',
    };
    final $body = midtransTransactionRequestDTO;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
