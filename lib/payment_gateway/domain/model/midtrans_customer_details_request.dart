import 'package:freezed_annotation/freezed_annotation.dart';

part 'midtrans_customer_details_request.freezed.dart';
part 'midtrans_customer_details_request.g.dart';

@freezed
class MidtransCustomerDetailsRequest with _$MidtransCustomerDetailsRequest {
  factory MidtransCustomerDetailsRequest({
    String? firstName,
    String? email,
    String? phone,
  }) = _MidtransCustomerDetailsRequest;

  factory MidtransCustomerDetailsRequest.fromJson(Map<String, dynamic> json) =>
      _$MidtransCustomerDetailsRequestFromJson(json);
}
