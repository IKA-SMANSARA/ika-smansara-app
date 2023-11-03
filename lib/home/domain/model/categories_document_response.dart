// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/home/home.dart';

part 'categories_document_response.freezed.dart';
part 'categories_document_response.g.dart';

@freezed
class CategoriesDocumentResponse with _$CategoriesDocumentResponse {
  factory CategoriesDocumentResponse({
    int? total,
    List<CategoryItemResponse>? documents,
  }) = _CategoriesDocumentResponse;

  factory CategoriesDocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesDocumentResponseFromJson(json);
}
