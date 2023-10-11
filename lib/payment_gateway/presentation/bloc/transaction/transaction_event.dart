part of 'transaction_bloc.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.started() = _Started;

  const factory TransactionEvent.fetchData(
    String? paymentAmount,
    String? paymentMethod,
    String? productDetails,
    String? customerVaName,
    String? email,
    String? phoneNumber,
    String? itemName,
    int? itemPrice,
    int? itemQuantity,
    String? customerFirstName,
    String? customerLastName,
    String? customerEmail,
    String? customerPhoneNumber,
    String? billingFirstName,
    String? billingLastName,
    String? billingAddress,
    String? billingCity,
    String? billingPostalCode,
    String? billingPhone,
    String? shippingFirstName,
    String? shippingLastName,
    String? shippingAddress,
    String? shippingCity,
    String? shippingPostalCode,
    String? shippingPhone,
  ) = _FetchData;
}
