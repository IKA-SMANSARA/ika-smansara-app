// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_services_payment_gateway.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ApiServicesPaymentGateway extends ApiServicesPaymentGateway {
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
      'Authorization': 'Basic TWlkLXNlcnZlci1RdS1kM0RVNWR6am5MQWt4RUk1ZHgtUF8=',
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
