// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_response_dto.freezed.dart';
part 'document_response_dto.g.dart';

@freezed
class DocumentResponseDTO with _$DocumentResponseDTO {
  factory DocumentResponseDTO({
    @JsonKey(name: '\$id') String? id,
    @JsonKey(name: '\$collectionId') String? collectionId,
    @JsonKey(name: '\$databaseId') String? databaseId,
    @JsonKey(name: '\$createdAt') String? createdAt,
    @JsonKey(name: '\$updatedAt') String? updatedAt,
    @JsonKey(name: '\$permissions') String? permissions,
  }) = _DocumentResponseDTO;

  factory DocumentResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$DocumentResponseDTOFromJson(json);
}
