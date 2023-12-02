// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/common/common.dart';

part 'transactions_collections_response_dto.freezed.dart';
part 'transactions_collections_response_dto.g.dart';

@freezed
class TransactionsCollectionsResponseDTO
    with _$TransactionsCollectionsResponseDTO {
  factory TransactionsCollectionsResponseDTO({
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'documents') List<TransactionDocumentResponseDTO>? documents,
  }) = _TransactionsCollectionsResponseDTO;

  factory TransactionsCollectionsResponseDTO.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TransactionsCollectionsResponseDTOFromJson(json);
}
