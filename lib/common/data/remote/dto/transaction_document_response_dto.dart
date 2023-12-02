// ignore_for_file: use_raw_strings, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_document_response_dto.freezed.dart';
part 'transaction_document_response_dto.g.dart';

@freezed
class TransactionDocumentResponseDTO with _$TransactionDocumentResponseDTO {
  factory TransactionDocumentResponseDTO({
    @JsonKey(name: '\$id') String? id,
    @JsonKey(name: '\$createdAt') String? createdAt,
    @JsonKey(name: '\$updatedAt') String? updatedAt,
    @JsonKey(name: '\$databaseId') String? databaseId,
    @JsonKey(name: '\$collectionId') String? collectionId,
    @JsonKey(name: '\$permissions') List<String>? permissions,
    @JsonKey(name: 'orderId') String? orderId,
    @JsonKey(name: 'campaignId') String? campaignId,
    @JsonKey(name: 'amount') int? amount,
    @JsonKey(name: 'paymentStatus') String? paymentStatus,
    @JsonKey(name: 'userId') String? userId,
  }) = _TransactionDocumentResponseDTO;

  factory TransactionDocumentResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$TransactionDocumentResponseDTOFromJson(json);
}
