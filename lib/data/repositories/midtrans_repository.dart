import 'package:ika_smansara/domain/entities/midtrans_transaction_response.dart';
import 'package:ika_smansara/domain/entities/result.dart';

abstract interface class MidtransRepository {
  Future<Result<MidtransTransactionResponse>> getAcquiringTransactionToken({
    required MidtransTransactionRequest,
  });
}
