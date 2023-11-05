// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/common/data/remote/dto/campaign_document_response_dto.dart';

part 'campaigns_collections_response_dto.freezed.dart';
part 'campaigns_collections_response_dto.g.dart';

@freezed
class CampaignsCollectionsResponseDTO with _$CampaignsCollectionsResponseDTO {
  factory CampaignsCollectionsResponseDTO({
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'documents') List<CampaignDocumentResponseDTO>? documents,
  }) = _CampaignsDocumentResponseDTO;

  factory CampaignsCollectionsResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$CampaignsCollectionsResponseDTOFromJson(json);
}
