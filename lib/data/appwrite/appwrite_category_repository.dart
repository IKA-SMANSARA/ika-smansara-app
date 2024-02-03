import 'package:appwrite/appwrite.dart';
import 'package:ika_smansara/data/repositories/category_repository.dart';
import 'package:ika_smansara/domain/entities/category_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/utils/constants.dart';

class AppwriteCategoryRepository implements CategoryRepository {
  final Client _appwriteClient;

  AppwriteCategoryRepository({Client? appwriteClient})
      : _appwriteClient = appwriteClient ??
            Client()
                .setEndpoint(Constants.BASE_URL)
                .setProject(Constants.PROJECT_ID);

  late final _databases = Databases(_appwriteClient);

  @override
  Future<Result<List<CategoryDocument>>> getCategories() async {
    try {
      var getCategoriesResult = await _databases.listDocuments(
        databaseId: Constants.DATABASE_ID,
        collectionId: Constants.CATEGORY_DOCUMENT_ID,
      );

      Constants.logger.d(getCategoriesResult);

      if (getCategoriesResult.documents.isNotEmpty) {
        return Result.success(
          getCategoriesResult.documents
              .map(
                (e) => CategoryDocument.fromJson(e.data),
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
