import 'package:appwrite/appwrite.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ika_smansara/data/helpers/network_client_helper.dart';
import 'package:ika_smansara/data/repositories/payout_repository.dart';
import 'package:ika_smansara/domain/entities/payout_document.dart';
import 'package:ika_smansara/domain/entities/payout_item_request.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/utils/constants.dart';

class AppwritePayoutRepository implements PayoutRepository {
  final Client _appwriteClient;

  AppwritePayoutRepository({Client? appwriteClient})
      : _appwriteClient =
            appwriteClient ?? NetworkClientHelper.instance.appwriteClient;

  late final _tablesDB = TablesDB(_appwriteClient);

  @override
  Future<Result<PayoutDocument>> createPayout({
    required PayoutItemRequest payoutItemRequest,
  }) async {
    try {
      var result = await _tablesDB.createRow(
        databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
        tableId: dotenv.env['PAYOUT_DOCUMENT_ID'] ?? 'default-collection',
        rowId: payoutItemRequest.payoutReferenceNo ?? ID.unique(),
        data: payoutItemRequest.toJson(),
        permissions: [
          Permission.read(Role.any()),
          Permission.write(Role.any()),
          Permission.update(Role.any()),
        ],
      );

      Constants.logger.d(result.data);

      return Result.success(
        PayoutDocument.fromJson(
          result.toMap(),
        ),
      );
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<List<PayoutDocument>>> getListPayoutByUserId({
    required String userId,
  }) async {
    try {
      var result = await _tablesDB.listRows(
        databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
        tableId: dotenv.env['PAYOUT_DOCUMENT_ID'] ?? 'default-collection',
        queries: [Query.equal('userId', userId)],
      );

      Constants.logger.d(result.rows);

      if (result.rows.isNotEmpty) {
        return Result.success(
          result.rows
              .map(
                (e) => PayoutDocument.fromJson(e.data),
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
