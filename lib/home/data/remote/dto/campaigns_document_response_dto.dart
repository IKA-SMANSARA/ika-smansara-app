import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/home/home.dart';

part 'campaigns_document_response_dto.freezed.dart';
part 'campaigns_document_response_dto.g.dart';

@freezed
class CampaignsDocumentResponseDTO with _$CampaignsDocumentResponseDTO {
  factory CampaignsDocumentResponseDTO({
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'documents') List<CampaignItemResponseDTO>? documents,
  }) = _CampaignsDocumentResponseDTO;

  factory CampaignsDocumentResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$CampaignsDocumentResponseDTOFromJson(json);
}
