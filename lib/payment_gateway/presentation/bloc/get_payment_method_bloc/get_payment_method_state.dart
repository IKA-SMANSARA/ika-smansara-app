part of 'get_payment_method_bloc.dart';

@freezed
class GetPaymentMethodState with _$GetPaymentMethodState {
  const factory GetPaymentMethodState.initial() = Initial;

  const factory GetPaymentMethodState.loading() = Loading;

  const factory GetPaymentMethodState.success({List<PaymentFee?>? paymentFee}) =
      Success;

  const factory GetPaymentMethodState.error({String? errorMessage}) = Error;
}
