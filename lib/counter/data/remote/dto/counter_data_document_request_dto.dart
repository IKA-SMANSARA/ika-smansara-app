// ignore_for_file: invalid_annotation_target, use_raw_strings

import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_data_document_request_dto.freezed.dart';

part 'counter_data_document_request_dto.g.dart';

@freezed
class CounterDataDocumentRequestDTO with _$CounterDataDocumentRequestDTO {
  const factory CounterDataDocumentRequestDTO({
    @JsonKey(name: 'counter-value') String? counterValue,
  }) = _CounterDataDocumentRequestDTO;

  factory CounterDataDocumentRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$CounterDataDocumentRequestDTOFromJson(json);
}
