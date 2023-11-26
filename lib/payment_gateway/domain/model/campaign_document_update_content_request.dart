import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/payment_gateway/domain/model/campaign_document_data_content_request.dart';

part 'campaign_document_update_content_request.freezed.dart';
part 'campaign_document_update_content_request.g.dart';

@freezed
class CampaignDocumentUpdateContentRequest
    with _$CampaignDocumentUpdateContentRequest {
  factory CampaignDocumentUpdateContentRequest({
    CampaignDocumentDataContentRequest? data,
  }) = _CampaignDocumentUpdateContentRequest;

  factory CampaignDocumentUpdateContentRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CampaignDocumentUpdateContentRequestFromJson(json);
}
