part of 'detail_campaign_bloc.dart';

@freezed
class DetailCampaignEvent with _$DetailCampaignEvent {
  const factory DetailCampaignEvent.started() = _Started;
  const factory DetailCampaignEvent.fetchData(String? documentId) = _FetchData;
}
