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

  late final _tablesDB = TablesDB(_appwriteClient);

  @override
  Future<Result<TransactionDocument>> createTransaction({
    required TransactionRequest transactionRequest,
    required TransactionDocumentRequest transactionDocumentRequest,
  }) async {
    try {
      var result = await _tablesDB.updateRow(
        databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
        tableId: dotenv.env['TRANSACTION_DOCUMENT_ID'] ?? 'default-collection',
        rowId: transactionRequest.transactionId ?? ID.unique(),
        data: transactionDocumentRequest.toJson(),
        permissions: [
          Permission.read(Role.any()),
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

      try {
        var result = await _tablesDB.createRow(
          databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
          tableId:
              dotenv.env['TRANSACTION_DOCUMENT_ID'] ?? 'default-collection',
          rowId: transactionRequest.transactionId ?? ID.unique(),
          data: transactionDocumentRequest.toJson(),
          permissions: [
            Permission.read(Role.any()),
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
  }

  @override
  Future<Result<List<TransactionDocument>>> getAllTransactions({
    required String userId,
  }) async {
    try {
      var result = await _tablesDB.listRows(
        databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
        tableId: dotenv.env['TRANSACTION_DOCUMENT_ID'] ?? 'default-collection',
        queries: [
          Query.orderDesc('\$updatedAt'),
          Query.equal('userId', userId),
        ],
      );

      Constants.logger.d(result.rows);

      if (result.rows.isNotEmpty) {
        return Result.success(
          result.rows
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
      var result = await _tablesDB.getRow(
        databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
        tableId: dotenv.env['TRANSACTION_DOCUMENT_ID'] ?? 'default-collection',
        rowId: transactionId,
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
      final baseQueries = [
        Query.orderDesc('\$updatedAt'),
        Query.equal('campaignId', campaignId),
        Query.equal('paymentStatus', 'settlement'),
      ];

      if (isSortList) {
        baseQueries.add(Query.limit(5));
      }

      var result = await _tablesDB.listRows(
        databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
        tableId: dotenv.env['TRANSACTION_DOCUMENT_ID'] ?? 'default-collection',
        queries: baseQueries,
      );

      Constants.logger.d(result.rows);

      if (result.rows.isNotEmpty) {
        return Result.success(
          result.rows
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
