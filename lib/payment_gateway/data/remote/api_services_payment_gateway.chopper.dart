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
  Future<Response<dynamic>> getPaymentMethod(
    PaymentMethodRequestDTO paymentMethodRequestDTO,
  ) {
    final $url = Uri.parse('paymentmethod/getpaymentmethod');
    final $headers = <String, String>{
      'Content-Type': 'application/json',
    };
    final $body = paymentMethodRequestDTO;
    final $request = Request(
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
    TransactionRequestDTO transactionRequestDTO,
  ) {
    final $url = Uri.parse('v2/inquiry');
    final $headers = <String, String>{
      'Content-Type': 'application/json',
    };
    final $body = transactionRequestDTO;
    final $request = Request(
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
    final $url = Uri.parse('transactionStatus');
    final $headers = <String, String>{
      'Content-Type': 'application/json',
    };
    final $body = <String, dynamic>{
      'merchantCode': merchantCode,
      'merchantOrderId': merchantOrderId,
      'signature': signature,
    };
    final $request = Request(
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
