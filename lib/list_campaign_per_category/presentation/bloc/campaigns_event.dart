part of 'campaigns_bloc.dart';

@freezed
class CampaignsEvent with _$CampaignsEvent {
  const factory CampaignsEvent.started() = _Started;
  const factory CampaignsEvent.fetchData(String? categoryName) = _FetchData;
}