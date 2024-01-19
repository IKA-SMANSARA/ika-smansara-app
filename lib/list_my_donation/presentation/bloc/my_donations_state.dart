part of 'my_donations_bloc.dart';

@freezed
class MyDonationsState with _$MyDonationsState {
  const factory MyDonationsState.initialMyDonations() = InitialMyDonations;
  const factory MyDonationsState.successMyDonations({
    @Default([]) List<TransactionDocumentResponse>? listDonation,
  }) = SuccessMyDonations;
  const factory MyDonationsState.errorMyDonations(String? errorMessage) =
      ErrorMyDonation;
  const factory MyDonationsState.loadingMyDOnations() = LoadingMyDonations;
}
