import 'package:ika_smansara/domain/entities/category_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';

abstract interface class CategoryRepository {
  Future<Result<List<CategoryDocument>>> getCategories();
}