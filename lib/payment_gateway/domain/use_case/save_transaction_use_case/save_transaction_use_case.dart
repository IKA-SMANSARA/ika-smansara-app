import 'package:dartz/dartz.dart';
import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveTransactionUseCase {
  SaveTransactionUseCase(this._paymentGatewayRepository);

  final PaymentGatewayRepository _paymentGatewayRepository;

  Future<Either<ErrorResponse, DocumentResponse>> call(
    String? grossAmount,
    String? orderId,
    String? campaignId,
    String? statusPayment,
    String? userId,
  ) async {
    final transactionDataDocumentRequest = TransactionDataDocumentRequest(
      amount: int.parse(grossAmount ?? '0'),
      campaignId: campaignId,
      orderId: orderId,
      paymentStatus: statusPayment,
      userId: userId,
    );

    final transactionDocumentRequest = TransactionDocumentRequest(
      documentId: Constants.uniqueId,
      data: transactionDataDocumentRequest,
      permissions: [
        'read("user:$userId")',
        'update("user:$userId")',
        'read("label:admin")',
        'update("label:admin")',
      ],
    );

    return _paymentGatewayRepository.saveTransactionDocument(
      transactionDocumentRequest,
    );
  }
}