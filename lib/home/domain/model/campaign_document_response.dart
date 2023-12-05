import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_document_response.freezed.dart';
part 'campaign_document_response.g.dart';

@freezed
class CampaignDocumentResponse with _$CampaignDocumentResponse {
  factory CampaignDocumentResponse({
    String? id,
    String? campaignName,
    int? goalAmount,
    int? currentAmount,
    String? dateEndCampaign,
    String? photoThumbnail,
  }) = _CampaignDocumentResponse;

  factory CampaignDocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$CampaignDocumentResponseFromJson(json);
}
