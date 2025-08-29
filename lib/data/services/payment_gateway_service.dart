import 'package:dio/dio.dart';
import 'package:ika_smansara/domain/entities/midtrans_transaction_response.dart';
import 'package:retrofit/retrofit.dart';

part 'payment_gateway_service.g.dart';

@RestApi()
abstract class PaymentGatewayService {
  factory PaymentGatewayService(
    Dio dio,
  ) = _PaymentGatewayService;

  @POST('')
  Future<MidtransTransactionResponse> acquiringTransactionToken(
    @Body() Map<String, dynamic> midtransTransactionRequest,
  );
}
