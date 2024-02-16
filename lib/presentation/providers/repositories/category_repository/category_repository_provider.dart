import 'package:ika_smansara/data/appwrite/appwrite_category_repository.dart';
import 'package:ika_smansara/data/repositories/category_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_repository_provider.g.dart';

@riverpod
CategoryRepository categoryRepository(CategoryRepositoryRef ref) =>
    AppwriteCategoryRepository();
