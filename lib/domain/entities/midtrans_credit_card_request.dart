import 'package:freezed_annotation/freezed_annotation.dart';

part 'midtrans_credit_card_request.freezed.dart';
part 'midtrans_credit_card_request.g.dart';

@freezed
class MidtransCreditCardRequest with _$MidtransCreditCardRequest {
  factory MidtransCreditCardRequest({@Default(true) bool secure}) =
      _MidtransCreditCardRequest;

  factory MidtransCreditCardRequest.fromJson(Map<String, dynamic> json) =>
      MidtransCreditCardRequest(
        secure: json['secure'],
      );
}
