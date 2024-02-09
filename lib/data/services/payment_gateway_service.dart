import 'package:dio/dio.dart';
import 'package:ika_smansara/data/helpers/network_client_helper.dart';
import 'package:ika_smansara/domain/entities/midtrans_transaction_request.dart';
import 'package:ika_smansara/domain/entities/midtrans_transaction_response.dart';
import 'package:retrofit/http.dart';

part 'payment_gateway_service.g.dart';

@RestApi()
abstract class PaymentGatewayService {
  factory PaymentGatewayService() => _PaymentGatewayService(
        NetworkClientHelper.instance.midtransSNAPClient,
      );

  @POST('transactions')
  Future<MidtransTransactionResponse> acquiringTransactionToken(
    @Body() MidtransTransactionRequest midtransTransactionRequest,
  );
}
