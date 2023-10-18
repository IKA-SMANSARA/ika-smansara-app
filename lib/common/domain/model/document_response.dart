// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_response.freezed.dart';
part 'document_response.g.dart';

@freezed
class DocumentResponse with _$DocumentResponse {
  factory DocumentResponse({
    String? id,
    String? collectionId,
    String? databaseId,
    String? createdAt,
    String? updatedAt,
    String? permissions,
  }) = _DocumentResponse;

  factory DocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$DocumentResponseFromJson(json);
}
