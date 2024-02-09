import 'package:freezed_annotation/freezed_annotation.dart';

part 'midtrans_item_request.freezed.dart';
part 'midtrans_item_request.g.dart';

@freezed
class MidtransItemRequest with _$MidtransItemRequest {
  factory MidtransItemRequest({
    String? id,
    int? price,
    int? quantity,
    String? name,
  }) = _MidtransItemRequest;

  factory MidtransItemRequest.fromJson(Map<String, dynamic> json) =>
      MidtransItemRequest(
        id: json['id'],
        name: json['name'],
        price: json['price'],
        quantity: json['quantity'],
      );
}
