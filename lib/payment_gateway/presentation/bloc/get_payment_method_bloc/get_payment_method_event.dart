part of 'get_payment_method_bloc.dart';

@freezed
class GetPaymentMethodEvent with _$GetPaymentMethodEvent {
  const factory GetPaymentMethodEvent.started() = _Started;

  const factory GetPaymentMethodEvent.fetchData({
    int? amount,
  }) = _FetchData;
}
