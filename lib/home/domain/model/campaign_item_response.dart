import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_item_response.freezed.dart';
part 'campaign_item_response.g.dart';

@freezed
class CampaignItemResponse with _$CampaignItemResponse {
  factory CampaignItemResponse({
    String? id,
    String? campaignName,
    String? campaignDescription,
    int? goalAmount,
    String? dateStartCampaign,
    String? dateEndCampaign,
    @Default(false) bool? isDeleted,
    @Default(false) bool? isActive,
    String? photoThumbnail,
    int? backerCount,
    @Default([]) List<String>? categories,
  }) = _CampaignItemResponse;

  factory CampaignItemResponse.fromJson(Map<String, dynamic> json) =>
      _$CampaignItemResponseFromJson(json);
}
