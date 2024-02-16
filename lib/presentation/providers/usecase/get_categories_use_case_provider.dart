import 'package:ika_smansara/domain/usecases/get_categories/get_categories.dart';
import 'package:ika_smansara/presentation/providers/repositories/category_repository/category_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_categories_use_case_provider.g.dart';

@riverpod
GetCategories getCategoriesUseCase(GetCategoriesUseCaseRef ref) => GetCategories(
      categoryRepository: ref.watch(categoryRepositoryProvider),
    );
