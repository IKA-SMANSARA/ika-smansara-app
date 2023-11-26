// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/payment_gateway/data/remote/dto/campaign_document_data_content_request_dto.dart';

part 'campaign_document_update_content_request_dto.freezed.dart';
part 'campaign_document_update_content_request_dto.g.dart';

@freezed
class CampaignDocumentUpdateContentRequestDTO
    with _$CampaignDocumentUpdateContentRequestDTO {
  factory CampaignDocumentUpdateContentRequestDTO({
    @JsonKey(name: 'data') CampaignDocumentDataContentRequestDTO? data,
  }) = _CampaignDocumentUpdateContentRequestDTO;

  factory CampaignDocumentUpdateContentRequestDTO.fromJson(
          Map<String, dynamic> json,) =>
      _$CampaignDocumentUpdateContentRequestDTOFromJson(json);
}
