// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'midtrans_item_request_dto.freezed.dart';
part 'midtrans_item_request_dto.g.dart';

@freezed
class MidtransItemRequestDTO with _$MidtransItemRequestDTO {
  factory MidtransItemRequestDTO({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'price') int? price,
    @JsonKey(name: 'quantity') int? quantity,
    @JsonKey(name: 'name') String? name,
  }) = _MidtransItemRequestDTO;

  factory MidtransItemRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$MidtransItemRequestDTOFromJson(json);
}
