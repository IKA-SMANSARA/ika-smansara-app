import 'package:appwrite/appwrite.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ika_smansara/data/repositories/carousel_repository.dart';
import 'package:ika_smansara/domain/entities/carousel_image_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:ika_smansara/data/helpers/network_client_helper.dart';

class AppwriteCarouselRepository implements CarouselRepository {
  final Client _appwriteClient;

  AppwriteCarouselRepository({Client? appwriteClient})
      : _appwriteClient =
            appwriteClient ?? NetworkClientHelper.instance.appwriteClient;

  late final _tablesDB = TablesDB(_appwriteClient);

  @override
  Future<Result<List<CarouselImageDocument>>> getCarousels() async {
    try {
      var result = await _tablesDB.listRows(
        databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
        tableId: dotenv.env['CAROUSEL_DOCUMENT_ID'] ?? 'default-collection',
      );

      Constants.logger.d(result);

      if (result.rows.isNotEmpty) {
        return Result.success(
          result.rows
              .map(
                (e) => CarouselImageDocument.fromJson(e.data),
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
