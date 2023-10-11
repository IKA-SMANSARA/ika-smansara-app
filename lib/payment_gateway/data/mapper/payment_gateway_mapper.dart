import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

extension PaymentFeeDTOExtension on PaymentFeeDTO {
  PaymentFee toPaymentFee() => PaymentFee(
        paymentMethod: paymentMethod,
        paymentName: paymentName,
        paymentImage: paymentImage,
        totalFee: totalFee,
      );
}

extension PaymentMethodResponseDTOExtension on PaymentMethodResponseDTO {
  PaymentMethodResponse toPaymentMethodResponse() => PaymentMethodResponse(
        paymentFee: paymentFee
            ?.map((paymentFee) => paymentFee?.toPaymentFee())
            .toList(),
        responseCode: responseCode,
        responseMessage: responseMessage,
      );
}

extension PaymentMethodRequestExtension on PaymentMethodRequest {
  PaymentMethodRequestDTO toPaymentMethodRequestDTO() =>
      PaymentMethodRequestDTO(
        merchantCode: merchantCode,
        amount: amount,
        datetime: datetime,
        signature: signature,
      );
}

extension PaymentTransactionStatusResponseDTOExtension
    on PaymentTransactionStatusResponseDTO {
  PaymentTransactionStatusResponse toPaymentTransactionStatusResponse() =>
      PaymentTransactionStatusResponse(
        merchantOrderId: merchantOrderId,
        reference: reference,
        amount: amount,
        fee: fee,
        statusCode: statusCode,
        statusMessage: statusMessage,
      );
}

extension TransactionResponseDTOExtension on TransactionResponseDTO {
  TransactionResponse toTransactionResponse() => TransactionResponse(
        merchantCode: merchantCode,
        paymentUrl: paymentUrl,
        reference: reference,
        statusCode: statusCode,
        statusMessage: statusMessage,
        message: message,
      );
}

extension ItemDetailExtension on ItemDetail {
  ItemDetailDTO toItemDetailDTO() => ItemDetailDTO(
        name: name,
        price: price,
        quantity: quantity,
      );
}

extension BillingAddressExtension on BillingAddress {
  BillingAddressDTO toBillingAddressDTO() => BillingAddressDTO(
        firstName: firstName,
        lastName: lastName,
        address: address,
        city: city,
        countryCode: countryCode,
        phone: phone,
        postalCode: postalCode,
      );
}

extension ShippingAddressExtension on ShippingAddress {
  ShippingAddressDTO toShippingAddressDTO() => ShippingAddressDTO(
        firstName: firstName,
        lastName: lastName,
        address: address,
        city: city,
        countryCode: countryCode,
        phone: phone,
        postalCode: postalCode,
      );
}

extension CustomerDetailExtension on CustomerDetail {
  CustomerDetailDTO toCustomerDetailDTO() => CustomerDetailDTO(
        firstName: firstName,
        lastName: lastName,
        email: email,
        phoneNumber: phoneNumber,
        billingAddress: billingAddress?.toBillingAddressDTO(),
        shippingAddress: shippingAddress?.toShippingAddressDTO(),
      );
}

extension TransactionRequestExtension on TransactionRequest {
  TransactionRequestDTO toTransactionRequestDTO() => TransactionRequestDTO(
        merchantCode: merchantCode,
        paymentAmount: paymentAmount,
        paymentMethod: paymentMethod,
        merchantOrderId: merchantOrderId,
        productDetails: productDetails,
        additionalParam: additionalParam,
        merchantUserInfo: merchantUserInfo,
        customerVaName: customerVaName,
        email: email,
        phoneNumber: phoneNumber,
        itemDetails: itemDetails
            ?.map((itemDetail) => itemDetail?.toItemDetailDTO())
            .toList(),
        customerDetail: customerDetail?.toCustomerDetailDTO(),
        callbackUrl: callbackUrl,
        returnUrl: returnUrl,
        signature: signature,
        expiryPeriod: expiryPeriod,
      );
}
