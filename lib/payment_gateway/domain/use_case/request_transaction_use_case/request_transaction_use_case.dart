import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';
import 'package:injectable/injectable.dart';

@injectable
class RequestTransactionUseCase {
  RequestTransactionUseCase(this._paymentGatewayRepository);

  final PaymentGatewayRepository _paymentGatewayRepository;

  Future<Resource<TransactionResponse>> call(
    String? paymentAmount,
    String? paymentMethod,
    String? merchantOrderId,
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
  ) async {
    // package data to map
    final itemDetail = ItemDetail(
      name: itemName,
      price: itemPrice,
      quantity: itemQuantity,
    );
    final billingAdd = BillingAddress(
      firstName: billingFirstName,
      lastName: billingLastName,
      address: billingAddress,
      city: billingCity,
      postalCode: billingPostalCode,
      phone: billingPhone,
      countryCode: Constants.idCountryCode,
    );
    final shippingAdd = ShippingAddress(
      firstName: shippingFirstName,
      lastName: shippingLastName,
      address: shippingAddress,
      city: shippingCity,
      postalCode: shippingPostalCode,
      phone: shippingPhone,
      countryCode: Constants.idCountryCode,
    );
    final customerDetail = CustomerDetail(
      firstName: customerFirstName,
      lastName: customerLastName,
      email: customerEmail,
      phoneNumber: customerPhoneNumber,
      billingAddress: billingAdd,
      shippingAddress: shippingAdd,
    );
    final transactionRequest = TransactionRequest(
      merchantCode: Constants.merchantCode,
      paymentAmount: paymentAmount,
      paymentMethod: paymentMethod,
      merchantOrderId: merchantOrderId,
      productDetails: productDetails,
      additionalParam: Constants.blankString,
      merchantUserInfo: Constants.blankString,
      customerVaName: customerVaName,
      email: email,
      phoneNumber: phoneNumber,
      itemDetails: [itemDetail],
      customerDetail: customerDetail,
      callbackUrl: Constants.mockUrlCallback,
      returnUrl: Constants.mockUrlReturn,
      signature: getPaymentSignatureMD5(
        merchantOrderId,
        int.parse(paymentAmount ?? '0'),
      ),
      expiryPeriod: Constants.defaultExpiryPeriod,
    );

    return _paymentGatewayRepository.requestTransaction(transactionRequest);
  }
}
