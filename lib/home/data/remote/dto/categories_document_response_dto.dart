// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/home/home.dart';

part 'categories_document_response_dto.freezed.dart';
part 'categories_document_response_dto.g.dart';

@freezed
class CategoriesDocumentResponseDTO with _$CategoriesDocumentResponseDTO {
  factory CategoriesDocumentResponseDTO({
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'documents') List<CategoryItemResponseDTO>? documents,
  }) = _CategoriesDocumentResponseDTO;

  factory CategoriesDocumentResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$CategoriesDocumentResponseDTOFromJson(json);
}
