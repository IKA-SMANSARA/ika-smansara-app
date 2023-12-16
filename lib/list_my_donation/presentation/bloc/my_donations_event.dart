part of 'my_donations_bloc.dart';

@freezed
class MyDonationsEvent with _$MyDonationsEvent {
  const factory MyDonationsEvent.started() = _Started;
  const factory MyDonationsEvent.fetchData() = _FetchData;
}
