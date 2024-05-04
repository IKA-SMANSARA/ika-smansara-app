import 'package:ika_smansara/domain/entities/payout_document.dart';
import 'package:ika_smansara/domain/entities/payout_item_request.dart';
import 'package:ika_smansara/domain/entities/result.dart';

abstract interface class PayoutRepository {
  Future<Result<List<PayoutDocument>>> getListPayoutByUserId({
    required String userId,
  });

  Future<Result<PayoutDocument>> createPayout({
    required PayoutItemRequest payoutItemRequest,
  });
}
