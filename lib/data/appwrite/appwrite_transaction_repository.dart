import 'package:appwrite/appwrite.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ika_smansara/data/helpers/network_client_helper.dart';
import 'package:ika_smansara/data/repositories/transaction_repository.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/domain/entities/transaction_document_request.dart';
import 'package:ika_smansara/domain/entities/transaction_request.dart';
import 'package:ika_smansara/utils/constants.dart';

class AppwriteTransactionRepository implements TransactionRepository {
  final Client _appwriteClient;

  AppwriteTransactionRepository({Client? appwriteClient})
      : _appwriteClient =
            appwriteClient ?? NetworkClientHelper.instance.appwriteClient;

  late final _databases = Databases(_appwriteClient);

  @override
  Future<Result<TransactionDocument>> createTransaction({
    required TransactionRequest transactionRequest,
    required TransactionDocumentRequest transactionDocumentRequest,
  }) async {
    try {
      var result = await _databases.createDocument(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['TRANSACTION_DOCUMENT_ID'].toString(),
        documentId: transactionRequest.transactionId ?? 'unique()',
        data: transactionDocumentRequest.toJson(),
        permissions: [
          Permission.read(
            Role.label('admin'),
          ),
          Permission.update(
            Role.label('admin'),
          ),
          Permission.read(
            Role.user(
              transactionRequest.userId!,
            ),
          ),
          Permission.update(
            Role.user(
              transactionRequest.userId!,
            ),
          ),
        ],
      );

      Constants.logger.d(result);

      return Result.success(
        TransactionDocument.fromJson(
          result.toMap(),
        ),
      );
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<List<TransactionDocument>>> getAllTransactions({
    required String campaignId,
    required String userId,
  }) async {
    try {
      var result = await _databases.listDocuments(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['TRANSACTION_DOCUMENT_ID'].toString(),
        queries: [
          Query.orderDesc('\$updatedAt'),
          Query.equal('campaignId', campaignId),
          Query.equal('userId', userId),
        ],
      );

      Constants.logger.d(result.documents);

      if (result.documents.isNotEmpty) {
        return Result.success(
          result.documents
              .map(
                (e) => TransactionDocument.fromJson(
                  e.data,
                ),
              )
              .toList(),
        );
      } else {
        return Result.success([]);
      }
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<TransactionDocument>> getDetailTransaction({
    required String transactionId,
  }) async {
    try {
      var result = await _databases.getDocument(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['TRANSACTION_DOCUMENT_ID'].toString(),
        documentId: transactionId,
      );

      Constants.logger.d(result);

      return Result.success(
        TransactionDocument.fromJson(
          result.data,
        ),
      );
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<List<TransactionDocument>>> getAllBacker({
    required String campaignId,
    required bool isSortList,
  }) async {
    try {
      final queries = (isSortList)
          ? [
              Query.orderDesc('\$updatedAt'),
              Query.equal('campaignId', '$campaignId'),
              Query.equal('paymentStatus', 'settlement'),
              Query.limit(5),
            ]
          : [
              Query.orderDesc('\$updatedAt'),
              Query.equal('campaignId', '$campaignId'),
              Query.equal('paymentStatus', 'settlement'),
            ];

      var result = await _databases.listDocuments(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['TRANSACTION_DOCUMENT_ID'].toString(),
        queries: queries,
      );

      Constants.logger.d(result.documents);

      if (result.documents.isNotEmpty) {
        return Result.success(
          result.documents
              .map(
                (e) => TransactionDocument.fromJson(
                  e.data,
                ),
              )
              .toList(),
        );
      } else {
        return Result.success([]);
      }
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }
}
