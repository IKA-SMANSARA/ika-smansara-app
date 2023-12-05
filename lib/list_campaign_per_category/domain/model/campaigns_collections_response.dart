import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/list_campaign_per_category/list_campaign_per_category.dart';

part 'campaigns_collections_response.freezed.dart';
part 'campaigns_collections_response.g.dart';

@freezed
class CampaignsCollectionsResponse with _$CampaignsCollectionsResponse {
  factory CampaignsCollectionsResponse({
    int? total,
    @Default([]) List<CampaignDocumentResponse>? documents,
  }) = _CampaignsCollectionsResponse;

  factory CampaignsCollectionsResponse.fromJson(Map<String, dynamic> json) =>
      _$CampaignsCollectionsResponseFromJson(json);
}
