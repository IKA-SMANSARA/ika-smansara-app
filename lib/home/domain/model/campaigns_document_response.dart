import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/home/home.dart';

part 'campaigns_document_response.freezed.dart';
part 'campaigns_document_response.g.dart';

@freezed
class CampaignsDocumentResponse with _$CampaignsDocumentResponse {
  factory CampaignsDocumentResponse({
    int? total,
    @Default([]) List<CampaignItemResponse>? documents,
  }) = _CampaignsDocumentResponse;

  factory CampaignsDocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$CampaignsDocumentResponseFromJson(json);
}
