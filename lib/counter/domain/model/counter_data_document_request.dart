import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_data_document_request.freezed.dart';

part 'counter_data_document_request.g.dart';

@freezed
class CounterDataDocumentRequest with _$CounterDataDocumentRequest {
  const factory CounterDataDocumentRequest({
    String? counterValue,
  }) = _CounterDataDocumentRequest;

  factory CounterDataDocumentRequest.fromJson(Map<String, dynamic> json) =>
      _$CounterDataDocumentRequestFromJson(json);
}
