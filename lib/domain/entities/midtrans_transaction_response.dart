import 'package:freezed_annotation/freezed_annotation.dart';

part 'midtrans_transaction_response.freezed.dart';
part 'midtrans_transaction_response.g.dart';

@freezed
class MidtransTransactionResponse with _$MidtransTransactionResponse {
  factory MidtransTransactionResponse({
    String? token,
    String? redirectUrl,
  }) = _MidtransTransactionResponse;

  factory MidtransTransactionResponse.fromJson(Map<String, dynamic> json) =>
      MidtransTransactionResponse(
        token: json['token'],
        redirectUrl: json['redirect_url'],
      );
}
