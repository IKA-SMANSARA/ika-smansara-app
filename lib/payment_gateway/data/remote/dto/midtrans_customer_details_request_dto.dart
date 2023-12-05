// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'midtrans_customer_details_request_dto.freezed.dart';
part 'midtrans_customer_details_request_dto.g.dart';

@freezed
class MidtransCustomerDetailsRequestDTO
    with _$MidtransCustomerDetailsRequestDTO {
  factory MidtransCustomerDetailsRequestDTO({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone') String? phone,
  }) = _MidtransCustomerDetailsRequestDTO;

  factory MidtransCustomerDetailsRequestDTO.fromJson(
          Map<String, dynamic> json) =>
      _$MidtransCustomerDetailsRequestDTOFromJson(json);
}
