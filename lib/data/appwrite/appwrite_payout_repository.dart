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

  late final _databases = Databases(_appwriteClient);

  @override
  Future<Result<PayoutDocument>> createPayout({
    required PayoutItemRequest payoutItemRequest,
  }) async {
    try {
      var result = await _databases.createDocument(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['PAYOUT_DOCUMENT_ID'].toString(),
        documentId: ID.unique(),
        data: payoutItemRequest.toJson(),
        permissions: [
          Permission.read(Role.any()),
          Permission.create(Role.any()),
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
  Future<Result<List<PayoutDocument>>> getListPayout() async {
    try {
      var result = await _databases.listDocuments(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['PAYOUT_DOCUMENT_ID'].toString(),
      );

      Constants.logger.d(result.documents);

      if (result.documents.isNotEmpty) {
        return Result.success(
          result.documents
              .map(
                (e) => PayoutDocument.fromJson(e.data),
              )
              .toList(),
        );
      } else {
        return Result.success([]);
      }

      // TODO: implement createPayout
      throw UnimplementedError();
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }
}
