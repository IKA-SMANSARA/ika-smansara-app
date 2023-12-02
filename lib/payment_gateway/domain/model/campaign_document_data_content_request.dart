import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_document_data_content_request.freezed.dart';
part 'campaign_document_data_content_request.g.dart';

@freezed
class CampaignDocumentDataContentRequest
    with _$CampaignDocumentDataContentRequest {
  factory CampaignDocumentDataContentRequest({
    int? backerCount,
    int? currentAmount,
  }) = _CampaignDocumentDataContentRequest;

  factory CampaignDocumentDataContentRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CampaignDocumentDataContentRequestFromJson(json);
}
