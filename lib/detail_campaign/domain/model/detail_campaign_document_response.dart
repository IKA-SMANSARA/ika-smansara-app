// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_campaign_document_response.freezed.dart';
part 'detail_campaign_document_response.g.dart';

@freezed
class DetailCampaignDocumentResponse with _$DetailCampaignDocumentResponse {
  factory DetailCampaignDocumentResponse({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'campaignName') String? campaignName,
    @JsonKey(name: 'goalAmount') int? goalAmount,
    @JsonKey(name: 'dateStartCampaign') String? dateStartCampaign,
    @JsonKey(name: 'dateEndCampaign') String? dateEndCampaign,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'isActive') bool? isActive,
    @JsonKey(name: 'photoThumbnail') String? photoThumbnail,
    @JsonKey(name: 'backerCount') int? backerCount,
    @JsonKey(name: 'categories') List<String>? categories,
    @JsonKey(name: 'currentAmount') int? currentAmount,
    @JsonKey(name: 'campaignDescription') String? campaignDescription,
  }) = _DetailCampaignDocumentResponse;

  factory DetailCampaignDocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailCampaignDocumentResponseFromJson(json);
}
