import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_document_response.freezed.dart';

part 'counter_document_response.g.dart';

@freezed
class CounterDocumentResponse with _$CounterDocumentResponse {
  const factory CounterDocumentResponse({
    String? id,
    String? collectionId,
    String? databaseId,
    String? createdAt,
    String? updatedAt,
    List<String?>? permissions,
    String? counterValue,
  }) = _CounterDocumentResponse;

  factory CounterDocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$CounterDocumentResponseFromJson(json);
}
