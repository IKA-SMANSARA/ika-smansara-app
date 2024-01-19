part of 'detail_my_donation_bloc.dart';

@freezed
class DetailMyDonationEvent with _$DetailMyDonationEvent {
  const factory DetailMyDonationEvent.started() = _Started;
  const factory DetailMyDonationEvent.fetchData(String? documentId) =
      _FetchData;
}
