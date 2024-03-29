import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/domain/entities/transaction_document_request.dart';
import 'package:ika_smansara/domain/entities/transaction_request.dart';

abstract interface class TransactionRepository {
  Future<Result<TransactionDocument>> createTransaction({
    required TransactionRequest transactionRequest,
    required TransactionDocumentRequest transactionDocumentRequest,
  });

  Future<Result<List<TransactionDocument>>> getAllTransactions({
    required String userId,
  });

  Future<Result<TransactionDocument>> getDetailTransaction({
    required String transactionId,
  });

  Future<Result<List<TransactionDocument>>> getAllBacker({
    required String campaignId,
    required bool isSortList,
  });
}
