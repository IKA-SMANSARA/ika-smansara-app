import 'package:ika_smansara/domain/entities/beneficiaries_request.dart';
import 'package:ika_smansara/domain/entities/beneficiaries_response.dart';
import 'package:ika_smansara/domain/entities/payout_request.dart';
import 'package:ika_smansara/domain/entities/payout_response.dart';
import 'package:ika_smansara/domain/entities/result.dart';

abstract interface class PayoutGatewayRepository {
  Future<Result<BeneficiariesResponse>> createBeneficiaries({
    required BeneficiariesRequest beneficiariesRequest,
  });

  Future<Result<BeneficiariesResponse>> updateBeneficiaries({
    required BeneficiariesRequest beneficiariesRequest,
  });

  Future<Result<List<BeneficiariesResponse>>> listBeneficiaries();

  Future<Result<PayoutResponse>> createPayout({
    required PayoutRequest payoutRequest,
  });
}
