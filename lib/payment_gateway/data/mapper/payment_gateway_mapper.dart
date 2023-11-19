import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

extension MidtransCustomerDetailsRequestDTOExtension
    on MidtransCustomerDetailsRequestDTO {
  MidtransCustomerDetailsRequest toMidtransCustomerDetailsRequest() =>
      MidtransCustomerDetailsRequest(
        firstName: firstName,
        email: email,
        phone: phone,
      );
}

extension MidtransCustomerDetailsExtension on MidtransCustomerDetailsRequest {
  MidtransCustomerDetailsRequestDTO toMidtransCustomerDetailsRequestDTO() =>
      MidtransCustomerDetailsRequestDTO(
        firstName: firstName,
        email: email,
        phone: phone,
      );
}

extension MidtransCreditCardRequestDTOExtension
    on MidtransCreditCardRequestDTO {
  MidtransCreditCardRequest toMidtransCreditCardRequest() =>
      MidtransCreditCardRequest(
        secure: secure,
      );
}

extension MidtransCreditCardRequestExtension on MidtransCreditCardRequest {
  MidtransCreditCardRequestDTO toMidtransCreditCardRequestDTO() =>
      MidtransCreditCardRequestDTO(
        secure: secure,
      );
}

extension MidtransTransactionDetailsRequestDTOExtension
    on MidtransTransactionDetailsRequestDTO {
  MidtransTransactionDetailsRequest toMidtransTransactionDetailsRequest() =>
      MidtransTransactionDetailsRequest(
        orderId: orderId,
        grossAmount: grossAmount,
      );
}

extension MidtransTransactionDetailsRequestExtension
    on MidtransTransactionDetailsRequest {
  MidtransTransactionDetailsRequestDTO
      toMidtransTransactionDetailsRequestDTO() =>
          MidtransTransactionDetailsRequestDTO(
            orderId: orderId,
            grossAmount: grossAmount,
          );
}

extension MidtransItemRequestDTOExtension on MidtransItemRequestDTO {
  MidtransItemRequest toMidtransItemRequest() => MidtransItemRequest(
        id: id,
        price: price,
        quantity: quantity,
        name: name,
      );
}

extension MidtransItemRequestExtension on MidtransItemRequest {
  MidtransItemRequestDTO toMidtransItemRequestDTO() => MidtransItemRequestDTO(
        id: id,
        price: price,
        quantity: quantity,
        name: name,
      );
}

extension MidtransTransactionRequestDTOExtension
    on MidtransTransactionRequestDTO {
  MidtransTransactionRequest toMidtransTransactionRequest() =>
      MidtransTransactionRequest(
        midtransTransactionDetailsRequest: midtransTransactionDetailsRequestDTO
            ?.toMidtransTransactionDetailsRequest(),
        midtransCreditCardRequest:
            midtransCreditCardRequestDTO?.toMidtransCreditCardRequest(),
        midtransItemDetailsRequest: midtransItemDetailsRequestDTO
            ?.map((data) => data.toMidtransItemRequest())
            .toList(),
        midtransCustomerDetailsRequest: midtransCustomerDetailsRequestDTO
            ?.toMidtransCustomerDetailsRequest(),
      );
}

extension MidtransTransactionRequestExtension on MidtransTransactionRequest {
  MidtransTransactionRequestDTO toMidtransTransactionRequestDTO() =>
      MidtransTransactionRequestDTO(
        midtransTransactionDetailsRequestDTO: midtransTransactionDetailsRequest
            ?.toMidtransTransactionDetailsRequestDTO(),
        midtransCreditCardRequestDTO:
            midtransCreditCardRequest?.toMidtransCreditCardRequestDTO(),
        midtransItemDetailsRequestDTO: midtransItemDetailsRequest
            ?.map((data) => data.toMidtransItemRequestDTO())
            .toList(),
        midtransCustomerDetailsRequestDTO: midtransCustomerDetailsRequest
            ?.toMidtransCustomerDetailsRequestDTO(),
      );
}

extension MidtransTransactionResponseDTOExtension
    on MidtransTransactionResponseDTO {
  MidtransTransactionResponse toMidtransTransactionResponse() =>
      MidtransTransactionResponse(
        token: token,
        redirectUrl: redirectUrl,
      );
}

extension MidtransTransactionResponseExtension on MidtransTransactionResponse {
  MidtransTransactionResponseDTO toMidtransTransactionResponseDTO() =>
      MidtransTransactionResponseDTO(
        token: token,
        redirectUrl: redirectUrl,
      );
}
