part of 'detail_campaign_bloc.dart';

@freezed
class DetailCampaignState with _$DetailCampaignState {
  const factory DetailCampaignState.initial() = Initial;
  const factory DetailCampaignState.loading() = Loading;
  const factory DetailCampaignState.success(
    DetailCampaignDocumentResponse? detailCampaignDocumentResponse,
  ) = Success;
  const factory DetailCampaignState.error(String? errorMessage) = Error;
}
