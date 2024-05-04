import 'package:appwrite/appwrite.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ika_smansara/data/helpers/network_client_helper.dart';
import 'package:ika_smansara/data/repositories/list_bank_repository.dart';
import 'package:ika_smansara/domain/entities/list_bank_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/utils/constants.dart';

class AppwriteListBankRepository implements ListBankRepository {
  final Client _appwriteClient;

  AppwriteListBankRepository({Client? appwriteClient})
      : _appwriteClient =
            appwriteClient ?? NetworkClientHelper.instance.appwriteClient;

  late final _databases = Databases(_appwriteClient);

  @override
  Future<Result<List<ListBankDocument>>> getListBank() async {
    try {
      var result = await _databases.listDocuments(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['LIST_BANK_DOCUMENT_ID'].toString(),
      );

      Constants.logger.d('list bank ${result.documents}');

      if (result.documents.isNotEmpty) {
        return Result.success(
          result.documents
              .map(
                (e) => ListBankDocument.fromJson(e.data),
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
