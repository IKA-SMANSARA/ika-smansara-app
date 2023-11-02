// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/home/home.dart';

part 'carousel_document_response_dto.freezed.dart';
part 'carousel_document_response_dto.g.dart';

@freezed
class CarouselDocumentResponseDTO with _$CarouselDocumentResponseDTO {
  factory CarouselDocumentResponseDTO({
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'documents') List<CarouselItemResponseDTO>? documents,
  }) = _CarouselDocumentResponseDTO;

  factory CarouselDocumentResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$CarouselDocumentResponseDTOFromJson(json);
}
