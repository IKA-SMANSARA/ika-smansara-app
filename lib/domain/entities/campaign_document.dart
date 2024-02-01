import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_document.freezed.dart';
part 'campaign_document.g.dart';

@freezed
class CampaignDocument with _$CampaignDocument {
  factory CampaignDocument({
    String? id,
    String? collectionId,
    String? databaseId,
    String? createdAt,
    String? updatedAt,
    @Default([]) List<dynamic> permissions,
    String? campaignName,
    @Default(0.0) double? goalAmount,
    String? dateStartCampaign,
    String? dateEndCampaign,
    @Default(false) bool isDeleted,
    @Default(false) bool isActive,
    String? photoThumbnail,
    @Default(0.0) double? backerCount,
    @Default([]) List<String>? categories,
    @Default(0.0) double? currentAmount,
    String? campaignDescription,
  }) = _CampaignDocument;

  factory CampaignDocument.fromJson(Map<String, dynamic> json) =>
      CampaignDocument(
        id: json['\$id'],
        collectionId: json['\$collectionId'],
        databaseId: json['\$databaseId'],
        createdAt: json['\$createdAt'],
        updatedAt: json['\$updatedAt'],
        permissions: json['\$permissions'],
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
