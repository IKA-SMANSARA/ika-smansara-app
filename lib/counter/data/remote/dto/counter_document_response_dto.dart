// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_document_response_dto.freezed.dart';

part 'counter_document_response_dto.g.dart';

@freezed
class CounterDocumentResponseDTO with _$CounterDocumentResponseDTO {
  const factory CounterDocumentResponseDTO({
    @JsonKey(name: '\$id') String? id,
    @JsonKey(name: '\$collectionId') String? collectionId,
    @JsonKey(name: '\$databaseId') String? databaseId,
    @JsonKey(name: '\$createdAt') String? createdAt,
    @JsonKey(name: '\$updatedAt') String? updatedAt,
    @JsonKey(name: '\$permissions') List<String?>? permissions,
    @JsonKey(name: 'counter-value') String? counterValue,
  }) = _CounterDocumentResponseDTO;

  factory CounterDocumentResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$CounterDocumentResponseDTOFromJson(json);
}
