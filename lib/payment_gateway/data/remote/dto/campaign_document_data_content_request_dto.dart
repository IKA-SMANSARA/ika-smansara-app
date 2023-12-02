// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_document_data_content_request_dto.freezed.dart';
part 'campaign_document_data_content_request_dto.g.dart';

@freezed
class CampaignDocumentDataContentRequestDTO
    with _$CampaignDocumentDataContentRequestDTO {
  factory CampaignDocumentDataContentRequestDTO({
    @JsonKey(name: 'backerCount') int? backerCount,
    @JsonKey(name: 'currentAmount') int? currentAmount,
  }) = _CampaignDocumentDataContentRequestDTO;

  factory CampaignDocumentDataContentRequestDTO.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CampaignDocumentDataContentRequestDTOFromJson(json);
}
