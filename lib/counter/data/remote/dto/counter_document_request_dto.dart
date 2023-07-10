// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/counter/counter.dart';

part 'counter_document_request_dto.freezed.dart';

part 'counter_document_request_dto.g.dart';

@freezed
class CounterDocumentRequestDTO with _$CounterDocumentRequestDTO {
  const factory CounterDocumentRequestDTO({
    @JsonKey(name: 'documentId') String? documentId,
    @JsonKey(name: 'data') CounterDataDocumentRequestDTO? data,
    @JsonKey(name: 'permissions') List<String?>? permissions,
  }) = _CounterDocumentRequestDTO;

  factory CounterDocumentRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$CounterDocumentRequestDTOFromJson(json);
}
