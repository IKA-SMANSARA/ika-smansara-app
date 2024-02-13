import 'package:ika_smansara/domain/entities/category_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/get_categories/get_categories.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_categories_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_list_category_provider.g.dart';

@riverpod
Future<List<CategoryDocument>> getListCategory(GetListCategoryRef ref) async {
  GetCategories getCategories = ref.read(getCategoriesUseCaseProvider);

  var result = await getCategories(null);

  return switch (result) {
    Success(value: final categories) => categories,
    Failed(message: _) => const [],
  };
}
