// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'midtrans_item_request.freezed.dart';
part 'midtrans_item_request.g.dart';

@freezed
class MidtransItemRequest with _$MidtransItemRequest {
  factory MidtransItemRequest({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'price') int? price,
    @JsonKey(name: 'quantity') int? quantity,
    @JsonKey(name: 'name') String? name,
  }) = _MidtransItemRequest;

  factory MidtransItemRequest.fromJson(Map<String, dynamic> json) =>
      _$MidtransItemRequestFromJson(json);
}
