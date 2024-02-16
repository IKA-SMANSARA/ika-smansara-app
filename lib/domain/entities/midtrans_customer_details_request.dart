// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'midtrans_customer_details_request.freezed.dart';
part 'midtrans_customer_details_request.g.dart';

@freezed
class MidtransCustomerDetailsRequest with _$MidtransCustomerDetailsRequest {
  factory MidtransCustomerDetailsRequest({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone') String? phone,
  }) = _MidtransCustomerDetailsRequest;

  factory MidtransCustomerDetailsRequest.fromJson(Map<String, dynamic> json) =>
      _$MidtransCustomerDetailsRequestFromJson(json);
}
