import 'package:dio/dio.dart';
import 'package:ika_smansara/domain/entities/beneficiaries_response.dart';
import 'package:retrofit/http.dart';

part 'payout_gateway_service.g.dart';

@RestApi()
abstract class PayoutGatewayService {
  factory PayoutGatewayService(
    Dio dio,
  ) = _PayoutGatewayService;

  @POST('/iris/api/v1/beneficiaries')
  Future<BeneficiariesResponse> createBeneficiaries(
    @Body() Map<String, dynamic> beneficiariesRequest,
  );

  @PATCH('/iris/api/v1/beneficiaries/{aliasName}')
  Future<BeneficiariesResponse> updateBeneficiaries(
    @Path() String aliasName,
    @Body() Map<String, dynamic> beneficiariesRequest,
  );

  @GET('/iris/api/v1/beneficiaries')
  Future<List<BeneficiariesResponse>> listCreateBeneficiaries();
}
