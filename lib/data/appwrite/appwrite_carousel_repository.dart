import 'package:appwrite/appwrite.dart';
import 'package:ika_smansara/data/repositories/carousel_repository.dart';
import 'package:ika_smansara/domain/entities/carousel_image_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/utils/constants.dart';

class AppwriteCarouselRepository implements CarouselRepository {
  final Client _appwriteClient;

  AppwriteCarouselRepository({Client? appwriteClient})
      : _appwriteClient = appwriteClient ??
            Client()
                .setEndpoint(Constants.BASE_URL)
                .setProject(Constants.PROJECT_ID);

  late final _databases = Databases(_appwriteClient);

  @override
  Future<Result<List<CarouselImageDocument>>> getCarousels() async {
    try {
      var getCarouselsResult = await _databases.listDocuments(
        databaseId: Constants.DATABASE_ID,
        collectionId: Constants.CAROUSEL_DOCUMENT_ID,
      );

      Constants.logger.d(getCarouselsResult);

      if (getCarouselsResult.documents.isNotEmpty) {
        return Result.success(
          getCarouselsResult.documents
              .map(
                (e) => CarouselImageDocument.fromJson(e.data),
              )
              .toList(),
        );
      } else {
        return Result.success([]);
      }
    } on AppwriteException catch (e) {
      return Result.failed(e.message ?? 'Error!');
    }
  }
}
