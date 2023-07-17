// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

part 'transaction_request_dto.freezed.dart';

part 'transaction_request_dto.g.dart';

@freezed
class TransactionRequestDTO with _$TransactionRequestDTO {
  const factory TransactionRequestDTO({
    @JsonKey(name: 'merchantCode') String? merchantCode,
    @JsonKey(name: 'paymentAmount') String? paymentAmount,
    @JsonKey(name: 'paymentMethod') String? paymentMethod,
    @JsonKey(name: 'merchantOrderId') String? merchantOrderId,
    @JsonKey(name: 'productDetails') String? productDetails,
    @JsonKey(name: 'additionalParam') String? additionalParam,
    @JsonKey(name: 'merchantUserInfo') String? merchantUserInfo,
    @JsonKey(name: 'customerVaName') String? customerVaName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phoneNumber') String? phoneNumber,
    @JsonKey(name: 'itemDetails') List<ItemDetailDTO?>? itemDetails,
    @JsonKey(name: 'customerDetail') CustomerDetailDTO? customerDetail,
    @JsonKey(name: 'callbackUrl') String? callbackUrl,
    @JsonKey(name: 'returnUrl') String? returnUrl,
    @JsonKey(name: 'signature') String? signature,
    @JsonKey(name: 'expiryPeriod') int? expiryPeriod,
  }) = _TransactionRequestDTO;

  factory TransactionRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$TransactionRequestDTOFromJson(json);
}
