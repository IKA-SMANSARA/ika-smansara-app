// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_request.freezed.dart';
part 'campaign_request.g.dart';

@freezed
class CampaignRequest with _$CampaignRequest {
  factory CampaignRequest({
    @JsonKey(name: '\$id') String? id,
    String? campaignName,
    @Default(0) int? goalAmount,
    String? dateStartCampaign,
    String? dateEndCampaign,
    @Default(false) bool? isDeleted,
    @Default(false) bool? isActive,
    String? photoThumbnail,
    @Default(0) int? backerCount,
    @Default([]) List<dynamic>? categories,
    @Default(0) int? currentAmount,
    String? campaignDescription,
  }) = _CampaignRequest;

  factory CampaignRequest.fromJson(Map<String, dynamic> json) =>
      CampaignRequest(
        backerCount: json['backerCount'],
        campaignDescription: json['campaignDescription'],
        campaignName: json['campaignName'],
        categories: json['categories'],
        currentAmount: json['currentAmount'],
        dateEndCampaign: json['dateEndCampaign'],
        dateStartCampaign: json['dateStartCampaign'],
        goalAmount: json['goalAmount'],
        isActive: json['isActive'],
        isDeleted: json['isDeleted'],
        photoThumbnail: json['photoThumbnail'],
      );
}
