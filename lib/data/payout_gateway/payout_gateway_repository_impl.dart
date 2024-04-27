import 'package:dio/dio.dart';
import 'package:ika_smansara/data/helpers/network_client_helper.dart';
import 'package:ika_smansara/data/repositories/payout_gateway_repository.dart';
import 'package:ika_smansara/data/services/payout_gateway_service.dart';
import 'package:ika_smansara/domain/entities/beneficiaries_request.dart';
import 'package:ika_smansara/domain/entities/beneficiaries_response.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/utils/constants.dart';

class PayoutGatewayRepositoryImpl implements PayoutGatewayRepository {
  final PayoutGatewayService _payoutGatewayService;

  PayoutGatewayRepositoryImpl({
    PayoutGatewayService? payoutGatewayService,
  }) : _payoutGatewayService = payoutGatewayService ??
            PayoutGatewayService(
              NetworkClientHelper.instance.payoutClient,
            );

  @override
  Future<Result<BeneficiariesResponse>> createBeneficiaries({
    required BeneficiariesRequest beneficiariesRequest,
  }) async {
    try {
      var result = await _payoutGatewayService.createBeneficiaries(
        beneficiariesRequest.toJson(),
      );

      Constants.logger.d(result);

      return Result.success(
        result,
      );
    } on DioException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<List<BeneficiariesResponse>>> listBeneficiaries() async {
    try {
      var result = await _payoutGatewayService.listCreateBeneficiaries();

      Constants.logger.d(result);

      return Result.success(
        result,
      );
    } on DioException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<BeneficiariesResponse>> updateBeneficiaries({
    required BeneficiariesRequest beneficiariesRequest,
  }) async {
    try {
      var result = await _payoutGatewayService.updateBeneficiaries(
        beneficiariesRequest.aliasName ?? '',
        beneficiariesRequest.toJson(),
      );

      Constants.logger.d(result);

      return Result.success(
        result,
      );
    } on DioException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }
}
