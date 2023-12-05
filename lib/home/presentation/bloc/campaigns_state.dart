part of 'campaigns_bloc.dart';

@freezed
class CampaignsState with _$CampaignsState {
  const factory CampaignsState.initialCampaigns() = InitialCampaigns;
  const factory CampaignsState.successCampaigns({
    @Default([]) List<CampaignDocumentResponse>? listCampaigns,
  }) = SuccessCampaigns;
  const factory CampaignsState.errorCampaigns(String? errorMessage) =
      ErrorCampaigns;
  const factory CampaignsState.loadingCampaigns() = LoadingCampaigns;
}
