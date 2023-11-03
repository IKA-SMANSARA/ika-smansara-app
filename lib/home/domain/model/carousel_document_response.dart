// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/home/home.dart';

part 'carousel_document_response.freezed.dart';
part 'carousel_document_response.g.dart';

@freezed
class CarouselDocumentResponse with _$CarouselDocumentResponse {

  factory CarouselDocumentResponse({
    int? total,
    List<CarouselItemResponse>? documents,
  }) = _CarouselDocumentResponse;

  factory CarouselDocumentResponse.fromJson(Map<String, dynamic> json) => _$CarouselDocumentResponseFromJson(json);
}