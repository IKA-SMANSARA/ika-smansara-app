// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CampaignItemResponse _$$_CampaignItemResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CampaignItemResponse(
      id: json['id'] as String?,
      campaignName: json['campaignName'] as String?,
      campaignDescription: json['campaignDescription'] as String?,
      goalAmount: json['goalAmount'] as int?,
      dateStartCampaign: json['dateStartCampaign'] as String?,
      dateEndCampaign: json['dateEndCampaign'] as String?,
      isDeleted: json['isDeleted'] as bool? ?? false,
      isActive: json['isActive'] as bool? ?? false,
      photoThumbnail: json['photoThumbnail'] as String?,
      backerCount: json['backerCount'] as int?,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CampaignItemResponseToJson(
        _$_CampaignItemResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'campaignName': instance.campaignName,
      'campaignDescription': instance.campaignDescription,
      'goalAmount': instance.goalAmount,
      'dateStartCampaign': instance.dateStartCampaign,
      'dateEndCampaign': instance.dateEndCampaign,
      'isDeleted': instance.isDeleted,
      'isActive': instance.isActive,
      'photoThumbnail': instance.photoThumbnail,
      'backerCount': instance.backerCount,
      'categories': instance.categories,
    };
