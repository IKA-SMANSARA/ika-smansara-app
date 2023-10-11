import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

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

extension MidtransTransactionRequestDTOExtension
    on MidtransTransactionRequestDTO {
  MidtransTransactionRequest toMidtransTransactionRequest() =>
      MidtransTransactionRequest(
        midtransTransactionDetailsRequest: midtransTransactionDetailsRequestDTO
            ?.toMidtransTransactionDetailsRequest(),
        midtransCreditCardRequest:
            midtransCreditCardRequestDTO?.toMidtransCreditCardRequest(),
      );
}

extension MidtransTransactionRequestExtension on MidtransTransactionRequest {
  MidtransTransactionRequestDTO toMidtransTransactionRequestDTO() =>
      MidtransTransactionRequestDTO(
        midtransTransactionDetailsRequestDTO: midtransTransactionDetailsRequest
            ?.toMidtransTransactionDetailsRequestDTO(),
        midtransCreditCardRequestDTO:
            midtransCreditCardRequest?.toMidtransCreditCardRequestDTO(),
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
