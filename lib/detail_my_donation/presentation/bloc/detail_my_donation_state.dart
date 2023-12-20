part of 'detail_my_donation_bloc.dart';

@freezed
class DetailMyDonationState with _$DetailMyDonationState {
  const factory DetailMyDonationState.initial() = Initial;
  const factory DetailMyDonationState.loading() = Loading;
  const factory DetailMyDonationState.success(
    DetailMyDonationDocumentResponse detailMyDonationDocumentResponse,
  ) = Success;
  const factory DetailMyDonationState.error(String? errorMessage) = Error;
}
