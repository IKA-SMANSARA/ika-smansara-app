import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/counter/counter.dart';

part 'counter_document_request.freezed.dart';

part 'counter_document_request.g.dart';

@freezed
class CounterDocumentRequest with _$CounterDocumentRequest {
  const factory CounterDocumentRequest({
    String? documentId,
    CounterDataDocumentRequest? data,
    List<String?>? permissions,
  }) = _CounterDocumentRequest;

  factory CounterDocumentRequest.fromJson(Map<String, dynamic> json) =>
      _$CounterDocumentRequestFromJson(json);
}
