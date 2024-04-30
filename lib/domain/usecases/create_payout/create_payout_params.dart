import 'package:ika_smansara/domain/entities/payout_item_request.dart';
import 'package:ika_smansara/domain/entities/payout_request.dart';

class CreatePayoutParams {
  final PayoutItemRequest payoutItemRequest;

  CreatePayoutParams({required this.payoutItemRequest});
}
