// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_services_payment_gateway.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
final class _$ApiServicesPaymentGateway extends ApiServicesPaymentGateway {
  _$ApiServicesPaymentGateway([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiServicesPaymentGateway;

  @override
  Future<Response<dynamic>> getPaymentMethod(
      PaymentMethodRequestDTO paymentMethodRequestDTO) {
    final Uri $url = Uri.parse('paymentmethod/getpaymentmethod');
    final Map<String, String> $headers = {
      'Content-Type': 'application/json',
    };
    final $body = paymentMethodRequestDTO;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> requestTransaction(
      TransactionRequestDTO transactionRequestDTO) {
    final Uri $url = Uri.parse('v2/inquiry');
    final Map<String, String> $headers = {
      'Content-Type': 'application/json',
    };
    final $body = transactionRequestDTO;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> checkTransactionStatus(
    String merchantCode,
    String merchantOrderId,
    String signature,
  ) {
    final Uri $url = Uri.parse('transactionStatus');
    final Map<String, String> $headers = {
      'Content-Type': 'application/json',
    };
    final $body = <String, dynamic>{
      'merchantCode': merchantCode,
      'merchantOrderId': merchantOrderId,
      'signature': signature,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>(
      $request,
      requestConverter: FormUrlEncodedConverter.requestFactory,
    );
  }
}
