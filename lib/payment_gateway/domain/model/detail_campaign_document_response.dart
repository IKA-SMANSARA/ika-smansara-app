// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_campaign_document_response.freezed.dart';
part 'detail_campaign_document_response.g.dart';

@freezed
class DetailCampaignDocumentResponse with _$DetailCampaignDocumentResponse {
  factory DetailCampaignDocumentResponse({
    String? id,
    String? campaignName,
    int? goalAmount,
    String? dateStartCampaign,
    String? dateEndCampaign,
    @Default(false) bool? isDeleted,
    @Default(false) bool? isActive,
    String? photoThumbnail,
    int? backerCount,
    List<String>? categories,
    int? currentAmount,
    String? campaignDescription,
  }) = _DetailCampaignDocumentResponse;

  factory DetailCampaignDocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailCampaignDocumentResponseFromJson(json);
}
