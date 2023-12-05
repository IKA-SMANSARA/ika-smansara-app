part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initialCategories() = InitialCategories;
  const factory CategoriesState.successCategories({
    @Default([]) List<CategoryItemResponse>? listCategoryItem,
  }) = SuccessCategories;
  const factory CategoriesState.errorCategories(String? errorMessage) =
      ErrorCategories;
  const factory CategoriesState.loadingCategories() = LoadingCategories;
}
