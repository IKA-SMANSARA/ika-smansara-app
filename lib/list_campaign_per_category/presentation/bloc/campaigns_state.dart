part of 'campaigns_bloc.dart';

@freezed
class CampaignsState with _$CampaignsState {
  const factory CampaignsState.initialCampaign() = InitialCampaign;
  const factory CampaignsState.successCampaign({
    @Default([]) List<CampaignDocumentResponse>? listCampaigns,
  }) = SuccessCampaign;
  const factory CampaignsState.errorCampaign(String? errorMessage) =
      ErrorCampaign;
  const factory CampaignsState.loadingCampaign() = LoadingCampaign;
}
