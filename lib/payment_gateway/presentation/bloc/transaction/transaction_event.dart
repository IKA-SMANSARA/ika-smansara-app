part of 'transaction_bloc.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.started() = _Started;

  const factory TransactionEvent.fetchData(
    String? grossAmount,
    String? orderId,
    String? campaignId,
  ) = _FetchData;

  const factory TransactionEvent.saveTransactionData(
    String? grossAmount,
    String? orderId,
    String? campaignId,
    String? statusPayment,
    String? campaignName,
    String? campaignImage,
  ) = _SaveTransactionData;
}
