// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'midtrans_credit_card_request_dto.freezed.dart';
part 'midtrans_credit_card_request_dto.g.dart';

@freezed
class MidtransCreditCardRequestDTO with _$MidtransCreditCardRequestDTO {
  const factory MidtransCreditCardRequestDTO({
    @JsonKey(name: 'secure') @Default(true) bool secure,
  }) = _MidtransCreditCardRequestDTO;

  factory MidtransCreditCardRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$MidtransCreditCardRequestDTOFromJson(json);
}
