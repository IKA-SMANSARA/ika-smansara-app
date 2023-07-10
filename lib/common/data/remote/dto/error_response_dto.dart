// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_response_dto.freezed.dart';

part 'error_response_dto.g.dart';

@freezed
class ErrorResponseDTO with _$ErrorResponseDTO {
  const factory ErrorResponseDTO({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'version') String? version,
  }) = _ErrorResponseDTO;

  factory ErrorResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseDTOFromJson(json);
}
