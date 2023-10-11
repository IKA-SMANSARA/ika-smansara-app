part of 'transaction_bloc.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState.initial() = Initial;

  const factory TransactionState.loading() = Loading;

  const factory TransactionState.error(String? errorMessage) = Error;

  const factory TransactionState.success(String? reference) = Success;
}
